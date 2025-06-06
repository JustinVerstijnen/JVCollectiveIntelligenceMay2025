<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    

    <title>
        PowerShell Gallery
        | JVCollectiveIntelligenceMay2025.psd1 1.1.2
    </title>

    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <link title="https://www.powershellgallery.com" type="application/opensearchdescription+xml" href="/opensearch.xml" rel="search">

    <link href="/Content/gallery/css/site.min.css?v=N-FMpZ9py63ZO32Sjay59lx-8krWdY3bkLtzeZMpb8w1" rel="stylesheet"/>

    <link href="/Content/gallery/css/branding.css?v=1.2" rel="stylesheet"/>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    

    
    
    
    
        <script type="text/javascript">

        window.addEventListener('DOMContentLoaded', () => {
            const tabs = document.querySelectorAll('[role="tab"]');
            const tabList = document.querySelector('[role="tablist"]');

            // Add a click event handler to each tab
            tabs.forEach((tab) => {
                tab.addEventListener('click', changeTabs);
            });

            // Enable arrow navigation between tabs in the tab list
            let tabFocus = 0;

            tabList?.addEventListener('keydown', (e) => {
                // Move right
                if (e.keyCode === 39 || e.keyCode === 37) {
                    tabs[tabFocus].setAttribute('tabindex', -1);
                    if (e.keyCode === 39) {
                        tabFocus++;
                        // If we're at the end, go to the start
                        if (tabFocus >= tabs.length) {
                            tabFocus = 0;
                        }
                        // Move left
                    } else if (e.keyCode === 37) {
                        tabFocus--;
                        // If we're at the start, move to the end
                        if (tabFocus < 0) {
                            tabFocus = tabs.length - 1;
                        }
                    }

                    tabs[tabFocus].setAttribute('tabindex', 0);
                    tabs[tabFocus].focus();
                }
            });
        });

        function changeTabs(e) {
            const target = e.target;
            const parent = target.parentNode;
            const grandparent = parent.parentNode;

            // Remove all current selected tabs
            parent
                .querySelectorAll('[aria-selected="true"]')
                .forEach((t) => t.setAttribute('aria-selected', false));

            // Set this tab as selected
            target.setAttribute('aria-selected', true);

            // Hide all tab panels
            grandparent
                .querySelectorAll('[role="tabpanel"]')
                .forEach((p) => p.setAttribute('hidden', true));

            // Show the selected panel
            grandparent.parentNode
                .querySelector(`#${target.getAttribute('aria-controls')}`)
                .removeAttribute('hidden');
        }
    </script>

</head>
<body>
    



    <div class="container-fluid banner banner-notice text-center">
        <div class="row">
            <div class="col-sm-12" role="alert">
                <i class="ms-Icon ms-Icon--Warning" aria-hidden="true"></i>
                <span>
                    This site uses cookies for analytics, personalized content and ads. By continuing to browse this site, you agree to this use.
                    <a href="https://go.microsoft.com/fwlink/?linkid=845480" aria-label="Learn more about Microsoft&amp;#39;s Cookie Policy">Learn more</a>
                </span>
            </div>
        </div>
    </div>


<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <a href="#" id="skipToContent" class="showOnFocus" title="Skip To Content">Skip To Content</a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-2">
                <div class="navbar-header">
                    <a href="/" class="nvabar-header-aLink">
                        <div class="navbar-logo-container">
                            <img class="navbar-logo img-responsive" alt="PowerShell Gallery Home"
                             src="/Content/Images/Branding/psgallerylogo.svg"
                                 onerror="this.src='https://powershellgallery.com/Content/Images/Branding/psgallerylogo-whiteinlay.png'; this.onerror = null;"
 />
                            <p class="navbar-logo-text">PowerShell Gallery</p>
                        </div>
                    </a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" title="Open Main Menu and profile dropdown">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            </div>
            <div class="col-sm-12 col-md-8 special-margin-left">
                <div id="navbar" class="navbar-collapse collapse" aria-label="Navigation Bar">
                    <table>
                        <tr>
                            <td colspan="3">
                                <ul class="nav navbar-nav" role="list">
                                        <li class="">
        <a role="link" href="/packages" target="" aria-label="Packages">
            <span aria-hidden="true">Packages</span>
        </a>
    </li>

                                        <li class="">
        <a role="link" href="/packages/manage/upload" target="" aria-label="Publish">
            <span aria-hidden="true">Publish</span>
        </a>
    </li>

                                                                            <li class="">
        <a role="link" href="https://go.microsoft.com/fwlink/?LinkID=825202&amp;clcid=0x409" target="_blank" aria-label="Documentation">
            <span aria-hidden="true">Documentation</span>
        </a>
    </li>

                                </ul>
                            </td>
                            <td colspan="1" class="td-align-topright">
                                    <div class="nav navbar-nav navbar-right">
                                            <div class=" dropdown">
                                                <a href="#" id="account-dropdown" class="dropdown-toggle" title="Open profile dropdown" data-toggle="dropdown">
                                                    <div>
                                                        <b><span class="text-username">JustinVerstijnen</span></b>
                                                        <span class="caret"></span>
                                                    </div>
                                                </a>
                                                <ul class="dropdown-menu" aria-labelledby="account-dropdown">
                                                    <li class="dropdown-header row">
                                                        <div class="col-sm-3">
                                                            <img src="https://secure.gravatar.com/avatar/8cdfca6436d3d9de9c3ea7202e5b18bb?s=100&amp;r=g&amp;d=blank" class="owner-image" height="50" title="JustinVerstijnen" width="50" alt="gravatar" />
                                                        </div>
                                                        <div class="col-sm-9 dropdown-profile">
                                                            <span class="dropdowntext-username dropdown-username">JustinVerstijnen</span>
                                                            <br />
                                                            <span class="dropdowntext-email dropdown-email">justin_vers@hotmail.com</span>
                                                        </div>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><a href="/profiles/JustinVerstijnen">View Profile</a></li>
                                                    <li>
                                                        <a href="/account">
                                                            Account Settings
                                                        </a>
                                                    </li>
                                                    <li><a href="/account/apikeys">API Keys</a></li>
                                                    <li class="divider"></li>
                                                    <!--li role="presentation"><a href="/account/Organizations" role="menuitem">Manage Organizations</a></li-->
                                                    <li><a href="/account/Packages">Manage Packages</a></li>
                                                    <li><a href="/packages/manage/upload">Upload Package</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="/users/account/LogOff?returnUrl=https%3A%2F%2Fwww.powershellgallery.com%2Fpackages%2FJVCollectiveIntelligenceMay2025%2F1.1.2%2FContent%2FJVCollectiveIntelligenceMay2025.psd1">Sign Out</a></li>
                                                </ul>
                                            </div>
                                    </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

        <div class="container-fluid search-container">
            <div class="row" id="search-row">
                <form aria-label="Package search bar" action="/packages" method="get">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-offset-1 col-sm-2"></div>
                            <div class="col-sm-12 col-md-8">
                                <div class="form-group special-margin-left">
                                    <label for="search">Search PowerShell packages:</label>
<div class="input-group"  role="presentation">
    <input name="q" type="text" class="form-control ms-borderColor-blue search-box" id="search" aria-label="Enter packages to search, use the arrow keys to autofill."
           placeholder="Az, etc..." autocomplete="on"
           value=""
           />
    <span class="input-group-btn">
        <button class="btn btn-default btn-search ms-borderColor-blue ms-borderColor-blue--hover" type="submit"
                title="Search PowerShell packages" aria-label="Search PowerShell packages">
            <span class="ms-Icon ms-Icon--Search" aria-hidden="true"></span>
        </button>
    </span>
</div>

                                    <div id="autocomplete-results-container" class="text-left" tabindex="0"></div>

<script type="text/html" id="autocomplete-results-row">
    <!-- ko if: $data -->
    <!-- ko if: $data.PackageRegistration -->
    <div class="col-sm-4 autocomplete-row-id autocomplete-row-data">
        <span data-bind="attr: { id: 'autocomplete-result-id-' + $data.PackageRegistration.Id, title: $data.PackageRegistration.Id }, text: $data.PackageRegistration.Id"></span>
    </div>
    <div class="col-sm-4 autocomplete-row-downloadcount text-right autocomplete-row-data">
        <span data-bind="text: $data.DownloadCount + ' downloads'"></span>
    </div>
    <div class="col-sm-4 autocomplete-row-owners text-left autocomplete-row-data">
        <span data-bind="text: $data.OwnersString + ' '"></span>
    </div>
    <!-- /ko -->
    <!-- ko ifnot: $data.PackageRegistration -->
    <div class="col-sm-12 autocomplete-row-id autocomplete-row-data">
        <span data-bind="attr: { id: 'autocomplete-result-id-' + $data, title: $data  }, text: $data"></span>
    </div>
    <!-- /ko -->
    <!-- /ko -->
</script>

<script type="text/html" id="autocomplete-results-template">
    <!-- ko if: $data.data.length > 0 -->
    <div data-bind="foreach: $data.data" id="autocomplete-results-list">
        <a data-bind="attr: { id: 'autocomplete-result-row-' + $data, href: '/packages/' + $data, title: $data }" tabindex="-1">
            <div data-bind="attr:{ id: 'autocomplete-container-' + $data }" class="autocomplete-results-row">
            </div>
        </a>
    </div>
    <!-- /ko -->
</script>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</nav>





    <div id="skippedToContent">
        

<div role="main" class="container page-display-filecontent">
    <div class="row package-page-heading">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10">
            <h1><a href="/packages/JVCollectiveIntelligenceMay2025/">JVCollectiveIntelligenceMay2025</a></h1>
            <h4><a href="/packages/JVCollectiveIntelligenceMay2025/1.1.2"> 1.1.2</a></h4>
        </div>
    </div>
    <div class="row package-page-MoreInfo">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10">
            <h3>JVCollectiveIntelligenceMay2025.psd1</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10 div-fileContentDisplay">          
            <div class="row fileContentDisplay">
                <table class="fileContentDisplay-table">
                    <tbody>
                        <tr>
                            <td class="fileContent col-sm-10">
                                <span style='color:#006400'>#</span><br />
<span style='color:#006400'># Module manifest for module &#39;JVCollectiveIntelligenceMay2025&#39;</span><br />
<span style='color:#006400'>#</span><br />
<span style='color:#006400'># Generated by: Justin Verstijnen</span><br />
<span style='color:#006400'>#</span><br />
<span style='color:#006400'># Generated on: 24-4-2025</span><br />
<span style='color:#006400'>#</span><br />
<span style='color:#006400'># Website: justinverstijnen.nl</span><br />
<br />
<span style='color:#000000'>@{</span><br />
<br />
<span style='color:#006400'># Script module or binary module file associated with this manifest.</span><br />
<span style='color:#000000'>RootModule</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;JVCollectiveIntelligenceMay2025.psm1&#39;</span><br />
<br />
<span style='color:#006400'># Version number of this module.</span><br />
<span style='color:#000000'>ModuleVersion</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;1.1.2&#39;</span><br />
<br />
<span style='color:#006400'># Supported PSEditions</span><br />
<span style='color:#006400'># CompatiblePSEditions = @()</span><br />
<br />
<span style='color:#006400'># ID used to uniquely identify this module</span><br />
<span style='color:#000000'>GUID</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;9a89873d-9eca-4dbc-a392-d244fda46854&#39;</span><br />
<br />
<span style='color:#006400'># Author of this module</span><br />
<span style='color:#000000'>Author</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Justin Verstijnen&#39;</span><br />
<br />
<span style='color:#006400'># Company or vendor of this module</span><br />
<span style='color:#000000'>CompanyName</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Unknown&#39;</span><br />
<br />
<span style='color:#006400'># Copyright statement for this module</span><br />
<span style='color:#000000'>Copyright</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;(c) Justin Verstijnen. All rights reserved.&#39;</span><br />
<br />
<span style='color:#006400'># Description of the functionality provided by this module</span><br />
<span style='color:#000000'>Description</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;The purpose of this script is to give a basic understanding of Powershell for my collegues. This must be very simple, and is in the Dutch language.&#39;</span><br />
<br />
<span style='color:#006400'># Minimum version of the PowerShell engine required by this module</span><br />
<span style='color:#006400'># PowerShellVersion = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Name of the PowerShell host required by this module</span><br />
<span style='color:#006400'># PowerShellHostName = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Minimum version of the PowerShell host required by this module</span><br />
<span style='color:#006400'># PowerShellHostVersion = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.</span><br />
<span style='color:#006400'># DotNetFrameworkVersion = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.</span><br />
<span style='color:#006400'># ClrVersion = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Processor architecture (None, X86, Amd64) required by this module</span><br />
<span style='color:#006400'># ProcessorArchitecture = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Modules that must be imported into the global environment prior to importing this module</span><br />
<span style='color:#006400'># RequiredModules = @()</span><br />
<br />
<span style='color:#006400'># Assemblies that must be loaded prior to importing this module</span><br />
<span style='color:#006400'># RequiredAssemblies = @()</span><br />
<br />
<span style='color:#006400'># Script files (.ps1) that are run in the caller&#39;s environment prior to importing this module.</span><br />
<span style='color:#006400'># ScriptsToProcess = @()</span><br />
<br />
<span style='color:#006400'># Type files (.ps1xml) to be loaded when importing this module</span><br />
<span style='color:#006400'># TypesToProcess = @()</span><br />
<br />
<span style='color:#006400'># Format files (.ps1xml) to be loaded when importing this module</span><br />
<span style='color:#006400'># FormatsToProcess = @()</span><br />
<br />
<span style='color:#006400'># Modules to import as nested modules of the module specified in RootModule/ModuleToProcess</span><br />
<span style='color:#006400'># NestedModules = @()</span><br />
<br />
<span style='color:#006400'># Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.</span><br />
<span style='color:#000000'>FunctionsToExport</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#8B0000'>&#39;Test-ModuleJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-NameJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-BirthYearJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-FavoriteColorJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Write-SummaryJVCI&#39;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#006400'># Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.</span><br />
<span style='color:#000000'>CmdletsToExport</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#8B0000'>&#39;Test-ModuleJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-NameJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-BirthYearJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-FavoriteColorJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Write-SummaryJVCI&#39;</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#006400'># Variables to export from this module</span><br />
<span style='color:#000000'>VariablesToExport</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;*&#39;</span><br />
<br />
<span style='color:#006400'># Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.</span><br />
<span style='color:#000000'>AliasesToExport</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#000000'>)</span><br />
<br />
<span style='color:#006400'># DSC resources to export from this module</span><br />
<span style='color:#006400'># DscResourcesToExport = @()</span><br />
<br />
<span style='color:#006400'># List of all modules packaged with this module</span><br />
<span style='color:#006400'># ModuleList = @()</span><br />
<br />
<span style='color:#006400'># List of all files packaged with this module</span><br />
<span style='color:#006400'># FileList = @()</span><br />
<br />
<span style='color:#006400'># Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.</span><br />
<span style='color:#000000'>PrivateData</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>PSData</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@{</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Tags applied to this module. These help with module discovery in online galleries.</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Tags = @()</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># A URL to the license for this module.</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># LicenseUri = &#39;&#39;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># A URL to the main website for this project.</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># ProjectUri = &#39;&#39;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># A URL to an icon representing this module.</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># IconUri = &#39;&#39;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># ReleaseNotes of this module</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># ReleaseNotes = &#39;&#39;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Prerelease string of this module</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Prerelease = &#39;&#39;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Flag to indicate whether the module requires explicit user acceptance for install/update/save</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># RequireLicenseAcceptance = $false</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># External dependent modules of this module</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># ExternalModuleDependencies = @()</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><span style='color:#000000'>&nbsp;</span><span style='color:#006400'># End of PSData hashtable</span><br />
<br />
<span style='color:#000000'>}</span><span style='color:#000000'>&nbsp;</span><span style='color:#006400'># End of PrivateData hashtable</span><br />
<br />
<span style='color:#006400'># HelpInfo URI of this module</span><br />
<span style='color:#006400'># HelpInfoURI = &#39;&#39;</span><br />
<br />
<span style='color:#006400'># Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.</span><br />
<span style='color:#006400'># DefaultCommandPrefix = &#39;&#39;</span><br />
<br />
<span style='color:#000000'>}</span><br />
<br />

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
    </div>
    <footer class="footer">
    <div class="container footer-container" >
        <div class="row">
            <div class="hidden-xs footer-heading">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-1 footer-heading">
                <span><a href="/policies/Contact">Contact Us</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="/policies/Terms">Terms of Use</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://go.microsoft.com/fwlink/?LinkId=521839">Privacy Policy</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://aka.ms/psgallery-status/">Gallery Status</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://github.com/PowerShell/PowerShellGallery/issues">Feedback</a></span>
            </div>
            <div class="col-sm-1 footer-heading">
                <span><a href="https://aka.ms/PSGalleryPreviewFAQ">FAQs</a></span>
            </div>
            <div class="col-sm-4 footer-heading">
                <span class="footer-heading-last">&copy; 2025 Microsoft Corporation</span>
            </div>
        </div>  
    </div>
</footer>

    <script src="/Scripts/gallery/site.min.js?v=s-Nycwu4c-T9eVJC1tGlnrSh8SDtsEN_92Vs4B72tZk1"></script>

    
            <script src="https://c.s-microsoft.com/mscc/statics/mscc-0.4.2.min.js"></script>
</body>
</html>
