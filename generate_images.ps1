$imagesDir = "assets/images"
If (-not (Test-Path -Path $imagesDir)) {
    New-Item -ItemType Directory -Path $imagesDir -Force
}

$images = @(
    @{ Name="logo_ja.svg"; Text="JA"; Color="#007BFF"; Bg="#f0f0f0"; Width=200; Height=200 },
    @{ Name="hero_bg.png"; Text="Hero Background"; Color="#ffffff"; Bg="#003366"; Width=1920; Height=1080 },
    @{ Name="alambre_12.svg"; Text="Alambre 12"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="alambre_14.svg"; Text="Alambre 14"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="toma_sencillo.svg"; Text="Toma Sencillo"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="toma_doble.svg"; Text="Toma Doble"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="toma_industrial.svg"; Text="Toma Industrial"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="interruptor_sencillo.svg"; Text="Interruptor"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="tubo_pvc.svg"; Text="Tubo PVC"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="plafon_led.svg"; Text="Plafón LED"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="bombillo_led.svg"; Text="Bombillo LED"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="breaker.svg"; Text="Breaker"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="caja_distribucion.svg"; Text="Caja Dist"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="pinza.svg"; Text="Pinza"; Color="#333"; Bg="#e0e0e0"; Width=400; Height=300 },
    @{ Name="about_us.svg"; Text="Nosotros"; Color="#333"; Bg="#d0d0d0"; Width=600; Height=400 }
)

foreach ($img in $images) {
    if ($img.Name.EndsWith(".png")) {
        # Create a dummy PNG (renaming SVG content for simplicity won't work perfectly for browsers but might often work, or just use SVG extension)
        # Actually better to stick to SVG for placeholders. 
        # But let's try to make an SVG and save as .png? No, browsers check content type.
        # I'll output an SVG but name it .png. Most modern browsers can handle mismatched extensions, or I'll update HTML.
        # Wait, if I update HTML to point to SVG, that's cleaner.
        # Let's just generate SVGs for everything.
        continue 
    }
    
    $svgContent = @"
<svg width="$($img.Width)" height="$($img.Height)" xmlns="http://www.w3.org/2000/svg">
    <rect width="100%" height="100%" fill="$($img.Bg)"/>
    <text x="50%" y="50%" font-family="Arial" font-size="24" fill="$($img.Color)" text-anchor="middle" dy=".3em">$($img.Text)</text>
</svg>
"@
    Set-Content -Path (Join-Path $imagesDir $img.Name) -Value $svgContent
    Write-Host "Generated $($img.Name)"
}
