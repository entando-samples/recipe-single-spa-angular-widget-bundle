const singleSpaAngularWebpack = require('single-spa-angular/lib/webpack').default;
const { merge } = require("webpack-merge");
const path = require("path");



module.exports = (config, options) => {
  const singleSpaWebpackConfig = singleSpaAngularWebpack(config, options);
  const orgName = "entando-mf-recipes"
  const projectName = "sspa-parcel-angular-recipe"

  // Feel free to modify this webpack config however you'd like to
  return merge(singleSpaWebpackConfig, {
    output: {
      filename: `${orgName}-${projectName}.js`
    },
    // modify the webpack config however you'd like to by adding to this object
  });

};
