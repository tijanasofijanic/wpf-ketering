﻿#pragma checksum "..\..\..\Jela.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "FB8F90638D78D7D6001D8512185CC467D1DFB10F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using app_ketering;


namespace app_ketering {
    
    
    /// <summary>
    /// Jela
    /// </summary>
    public partial class Jela : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 29 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnZatvori;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid datagrid;
        
        #line default
        #line hidden
        
        
        #line 79 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtNaziv;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtOpis;
        
        #line default
        #line hidden
        
        
        #line 97 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtSlika;
        
        #line default
        #line hidden
        
        
        #line 113 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtCena;
        
        #line default
        #line hidden
        
        
        #line 131 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSnimi;
        
        #line default
        #line hidden
        
        
        #line 140 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnOcisti;
        
        #line default
        #line hidden
        
        
        #line 151 "..\..\..\Jela.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnObrisi;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.6.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/app-ketering;component/jela.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Jela.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.6.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.btnZatvori = ((System.Windows.Controls.Button)(target));
            
            #line 29 "..\..\..\Jela.xaml"
            this.btnZatvori.Click += new System.Windows.RoutedEventHandler(this.btnZatvori_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.datagrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 3:
            this.txtNaziv = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.txtOpis = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.txtSlika = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            
            #line 105 "..\..\..\Jela.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.btnBrowse_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.txtCena = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.btnSnimi = ((System.Windows.Controls.Button)(target));
            
            #line 123 "..\..\..\Jela.xaml"
            this.btnSnimi.Click += new System.Windows.RoutedEventHandler(this.btnSnimi_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.btnOcisti = ((System.Windows.Controls.Button)(target));
            
            #line 132 "..\..\..\Jela.xaml"
            this.btnOcisti.Click += new System.Windows.RoutedEventHandler(this.btnOcisti_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.btnObrisi = ((System.Windows.Controls.Button)(target));
            
            #line 143 "..\..\..\Jela.xaml"
            this.btnObrisi.Click += new System.Windows.RoutedEventHandler(this.btnObrisi_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

