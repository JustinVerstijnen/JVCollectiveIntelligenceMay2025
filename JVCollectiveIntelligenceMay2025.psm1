<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    

    <title>
        PowerShell Gallery
        | JVCollectiveIntelligenceMay2025.psm1 1.1.2
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
                                                    <li><a href="/users/account/LogOff?returnUrl=https%3A%2F%2Fwww.powershellgallery.com%2Fpackages%2FJVCollectiveIntelligenceMay2025%2F1.1.2%2FContent%2FJVCollectiveIntelligenceMay2025.psm1">Sign Out</a></li>
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
            <h3>JVCollectiveIntelligenceMay2025.psm1</h3>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-offset-1 col-sm-10 div-fileContentDisplay">          
            <div class="row fileContentDisplay">
                <table class="fileContentDisplay-table">
                    <tbody>
                        <tr>
                            <td class="fileContent col-sm-10">
                                <span style='color:#006400'># Functie 1: Testen of de module succesvol geladen is</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Test-ModuleJVCI</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;De module is succesvol geladen! Voer het commando Set-NameJVCI uit om te beginnen!&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Green</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Functie 2: Vragen naar naam en achternaam</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Set-NameJVCI</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$global:FullName</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Read-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Wat is je volledige naam? (Voornaam en Achternaam gescheiden door een spatie)&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Leuk om kennis te maken $global:FullName! Ik ben PowerShell :)&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Green</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Functie 3: Vragen naar het geboortejaar</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Set-BirthYearJVCI</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$global:BirthYear</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Read-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;En $global:FullName, in welk jaar ben je geboren?&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Validatie: Controleren of het ingevoerde geboortejaar een getal is</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#D93900'>$BirthYear</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-match</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;^\d{4}$&#39;</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Aha $global:FullName, jij bent dus geboren in het jaar: $BirthYear&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Green</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>else</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Ongeldige invoer. Voer een geldig jaartal in.&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$global:BirthYear</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$null</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Functie 4: Vragen naar favoriete kleur (met PowerShell-kleurenopties)</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Set-FavoriteColorJVCI</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$validColors</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>@(</span><span style='color:#8B0000'>&quot;Red&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Green&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Blue&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Yellow&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Magenta&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Cyan&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;White&quot;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Black&quot;</span><span style='color:#000000'>)</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#0000FF'>Read-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Wat is je favoriete kleur? Kies uit: Red, Green, Blue, Yellow, Magenta, Cyan, White, Black&quot;</span><br />
<br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#D93900'>$validColors</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-contains</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$FavoriteColor</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Dus, $global:FullName , jouw favoriete kleur is dus $FavoriteColor! Ik heb je tekst nu aangepast naar jouw favoriete kleur :)&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>else</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Ongeldige kleur. Kies een van de volgende kleuren: Red, Green, Blue, Yellow, Magenta, Cyan, White, Black.&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$null</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#006400'># Functie 5: Samenvatting van naam, geboortejaar en favoriete kleur</span><br />
<span style='color:#00008B'>function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Write-SummaryJVCI</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#00008B'>if</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>(</span><span style='color:#D93900'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FullName</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-or</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:BirthYear</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-or</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$null</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-eq</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><span style='color:#000000'>)</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Er ontbreekt informatie. Zorg ervoor dat je alle vragen hebt beantwoord.&quot;</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><span style='color:#000000'>&nbsp;</span><span style='color:#00008B'>else</span><span style='color:#000000'>&nbsp;</span><span style='color:#000000'>{</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#006400'># Gebruik van de opgegeven favoriete kleur voor de tekst</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Jouw naam is: $global:FullName&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Je bent geboren in: $global:BirthYear&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#D93900'>$verschilJaren</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>=</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>2006</span><span style='color:#000000'>&nbsp;</span><span style='color:#737373'>-</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:BirthYear</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Je bent hiermee $verschilJaren jaar ouder dan PowerShell&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Je favoriete kleur is: $global:FavoriteColor&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#D93900'>$global:FavoriteColor</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Start-Sleep</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Seconds</span><span style='color:#000000'>&nbsp;</span><span style='color:#800080'>10</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#0000FF'>Write-Host</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&quot;Leuk je te ontmoeten $global:FullName, en hopelijk heb je wat van deze minicursus geleerd!&quot;</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-ForegroundColor</span><span style='color:#000000'>&nbsp;</span><span style='color:#8A2BE2'>Green</span><br />
<span style='color:#000000'>&nbsp;&nbsp;&nbsp;&nbsp;</span><span style='color:#000000'>}</span><br />
<span style='color:#000000'>}</span><br />
<br />
<span style='color:#0000FF'>Export-ModuleMember</span><span style='color:#000000'>&nbsp;</span><span style='color:#000080'>-Function</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Test-ModuleJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-NameJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-BirthYearJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Set-FavoriteColorJVCI&#39;</span><span style='color:#737373'>,</span><span style='color:#000000'>&nbsp;</span><span style='color:#8B0000'>&#39;Write-SummaryJVCI&#39;</span><br />

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
