<#assign wp=JspTaglibs["/aps-core"]>

<div id="single-spa-angular-widget"></div>

<script nonce="<@wp.cspNonce />">
    System.import('single-spa').then(function (singleSpa) {
        System.import('single-spa-angular-widget').then(parcel=>{
            const domElement = document.getElementById('single-spa-angular-widget');
            const parcelProps = {domElement, customProp1: 'foo'};
            singleSpa.mountRootParcel(parcel, parcelProps);
        })

        singleSpa.start();
    });
</script>
