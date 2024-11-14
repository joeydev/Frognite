{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 8,
  "extensionVersion": "2.4.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-11-08T06:43:15",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"filename":"UltimateIaps.gml","origname":"","init":"UIaps_LoadResources","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"UIaps_Init","kind":2,"help":"UIaps_Init(connection-time)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"UIaps_Init","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_LoadResources","kind":2,"help":"UIaps_LoadResources()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"UIaps_LoadResources","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_PurchaseProduct","kind":2,"help":"UIaps_PurchaseProduct(product-id)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"UIaps_PurchaseProduct","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_AddProduct","kind":2,"help":"UIaps_AddProduct(product-id,consumable,purchased-script)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"UIaps_AddProduct","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_Purchases_Async","kind":2,"help":"UIaps_Purchases_Async()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"UIaps_Purchases_Async","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_DrawProductAttribute","kind":2,"help":"UIaps_DrawProductAttribute(x,y,product-index,attribute)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
            2,
            1,
            1,
          ],"resourceVersion":"1.0","name":"UIaps_DrawProductAttribute","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_AddSubscription","kind":2,"help":"UIaps_AddSubscription(idSuscription,purchased-script)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"UIaps_AddSubscription","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_PurchaseSubscription","kind":2,"help":"UIaps_PurchaseSubscription(subscription_id)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"UIaps_PurchaseSubscription","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_DrawSubscriptionAttribute","kind":2,"help":"UIaps_DrawSubscriptionAttribute(x,y,subscription-index,attribute)","hidden":false,"returnType":1,"argCount":0,"args":[
            2,
            2,
            1,
            1,
          ],"resourceVersion":"1.0","name":"UIaps_DrawSubscriptionAttribute","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_Add_Url_Subscriptions_Validation","kind":2,"help":"UIaps_Add_Url_Subscriptions_Validation(url)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"UIaps_Add_Url_Subscriptions_Validation","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"UIaps_SubscriptionValidation_Async","kind":2,"help":"UIaps_SubscriptionValidation_Async()","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"UIaps_SubscriptionValidation_Async","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"0","hidden":false,"resourceVersion":"1.0","name":"PRODUCTID","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"PRODUCTPRICE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"2","hidden":false,"resourceVersion":"1.0","name":"PRODUCTTITLE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"3","hidden":false,"resourceVersion":"1.0","name":"PRODUCTDESCRIPTION","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"7","hidden":false,"resourceVersion":"1.0","name":"ITEMALREADYOWNED","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"true","hidden":false,"resourceVersion":"1.0","name":"UIAPs_PRODUCT_CONSUMABLE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"false","hidden":false,"resourceVersion":"1.0","name":"UIAPs_PRODUCT_NON_CONSUMABLE","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"1","hidden":false,"resourceVersion":"1.0","name":"UIAPs_TYPE_PRODUCT","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"2","hidden":false,"resourceVersion":"1.0","name":"UIAPs_TYPE_SUBSCRIPTION","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"UIAPs_ERR_INVALID","hidden":false,"resourceVersion":"1.0","name":"UIAPs_ERR_INVALID","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"UIAPs_ERR_DATA_INVALID","hidden":false,"resourceVersion":"1.0","name":"UIAPs_ERR_DATA_INVALID","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"\"user_cancelled\"","hidden":false,"resourceVersion":"1.0","name":"UIAPs_USER_CANCELLED","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":8,"order":[
        {"name":"UIaps_LoadResources","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_Init","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_AddProduct","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_AddSubscription","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_PurchaseProduct","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_PurchaseSubscription","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_Purchases_Async","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_DrawProductAttribute","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_DrawSubscriptionAttribute","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_Add_Url_Subscriptions_Validation","path":"extensions/UltimateIaps/UltimateIaps.yy",},
        {"name":"UIaps_SubscriptionValidation_Async","path":"extensions/UltimateIaps/UltimateIaps.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 8,
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.0",
  "name": "UltimateIaps",
  "tags": [],
  "resourceType": "GMExtension",
}