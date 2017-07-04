using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using System.Windows.Markup;
using System.Windows.Annotations;
using System.IO;

namespace ControlTemplateBrower
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Type controlType = typeof(Control);
            List<Type> derivedTypes = new List<Type>();

            Assembly assembly = Assembly.GetAssembly(typeof(Control));
            foreach (Type type in assembly.GetTypes())
            {
                if (type.IsSubclassOf(controlType) && !type.IsAbstract && type.IsPublic)
                {
                    derivedTypes.Add(type);
                }
            }

            lstTypes.ItemsSource = derivedTypes.OrderBy(t => t.Name);
        }

        private void lstTypes_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                Type type = (Type)lstTypes.SelectedItem;

                ConstructorInfo info = type.GetConstructor(System.Type.EmptyTypes);
                Control control = (Control)info.Invoke(null);

                control.Visibility = Visibility.Collapsed;
                if (type.Name == typeof(ToolTip).Name)
                {
                    (control as ToolTip).IsOpen = true;
                }
                else if (type.Name == typeof(ContextMenu).Name)
                {
                    (control as ContextMenu).IsOpen = true;
                }
                else if (type.Name.Contains("Window"))
                {
                    (control as Window).Width = 0;
                    (control as Window).Height = 0;
                    (control as Window).Show();
                    (control as Window).Close();
                }
                else if (type.Name == "StickyNoteControl")
                {
                }
                else
                {
                    grid.Children.Add(control);
                }

                ControlTemplate template = control.Template;

                XmlWriterSettings settings = new XmlWriterSettings();
                settings.Indent = true;
                StringBuilder sb = new StringBuilder();
                XmlWriter writer = XmlWriter.Create(sb, settings);
                XamlWriter.Save(template, writer);

                txtTemplate.Text = sb.ToString();

                grid.Children.Remove(control);
            }
            catch (Exception ex)
            {
                txtTemplate.Text = "<<Error generationg template:" + ex.Message + ">>";
            }
        }

        protected ControlTemplate GetEditingTemplate()
        {
            try
            {
                StringReader stringReader = new StringReader(txtTemplate.Text);
                XmlReader xmlReader = XmlReader.Create(stringReader);
                return (ControlTemplate)XamlReader.Load(xmlReader);
            }
            catch (Exception)
            {
                return null;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Type type = (Type)lstTypes.SelectedItem;

                ConstructorInfo info = type.GetConstructor(System.Type.EmptyTypes);
                Control control = (Control)info.Invoke(null);
                control.Width = 200;
                control.Height = 200;
                control.VerticalAlignment = VerticalAlignment.Center;
                control.HorizontalAlignment = HorizontalAlignment.Center;
                WindowTest win = new WindowTest();
                win.gd.Children.Add(control);
                control.Template = GetEditingTemplate();
                win.ShowDialog();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
