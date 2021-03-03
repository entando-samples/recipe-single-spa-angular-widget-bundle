<#assign wp=JspTaglibs["/aps-core"]>

<!--import map override plugin -->
<meta name="importmap-type" content="systemjs-importmap"/>
<script nonce="<@wp.cspNonce />" src="https://cdn.jsdelivr.net/npm/systemjs/dist/system.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/zone.js/0.8.6/zone.min.js" integrity="sha512-GPqk3LL3bDL7NPZqgV1tIOpptKs9PJ7ZQyxw3/J6mYtDRan3kIYvppiDF+bA23RkubEACigUEUjwo1L2fz6/DQ==" crossorigin="anonymous"></script>
<script nonce="<@wp.cspNonce />" type="systemjs-importmap">
{
  "imports": {
    "single-spa": "https://cdn.jsdelivr.net/npm/single-spa/lib/system/single-spa.dev.js",
    "single-spa-angular-widget": "<@wp.resourceURL />single-spa-angular-widget-bundle/static/js/entando-mf-recipes-sspa-parcel-angular-recipe.js"
  }
}
</script>
<!--
Make sure to put this BEFORE any <script nonce="<@wp.cspNonce />" type="module" > elements or any System.import() calls, but
AFTER all other import maps
-->
<script nonce="<@wp.cspNonce />" type="text/javascript" src="https://cdn.jsdelivr.net/npm/import-map-overrides@2.3.0/dist/import-map-overrides.js"></script>
<!-- optionally include the UI for import map overrides -->
<import-map-overrides-full show-when-local-storage="devtools"></import-map-overrides-full>
