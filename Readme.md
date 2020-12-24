# ConnectALL Kubernetes Adapter 

ConnectALL Kubernetes Adapter is developed as an extension to the Universal Adapter capability of ConnectALL. The adapter specifications will let the user create a kubernetes deployment and get the status of all running deployments. This would be very useful in a configuration control environment like ServiceNow where a ticket (like a CI issue) is created to start a deployment.

Please refer to https://wiki.connectall.com/ca/latest/user-guide/adapters/custom-application-adapter for more information


# How to use

## Import specifications
* Import kubernetes_config.zip into ConnectALL using "Install custom adapter" feature.

## Define application links
* Create an application link in ConnectALL between Kubernetes and a destination application of your choice
* Two types of deployment are supported:
** The 'Deployment' issue type allows the user to map the image and replicas field to start up a simple container. Note the title field of the issue is usually mapped to the name of the deployment. All three labels must be provided.
** The "Deployment By Json" issue type allows a more complex container to be deployed. The 'Deploymnent JSON' field has the deployment yaml converted to json format. You can use the web site https://www.convertjson.com/yaml-to-json.htm to assist with the conversion'. Note the issue title field must also be mapped to the deployment name, and must match the name in the json.
* Navigate to `Configuration -> Connections` screen and create a new connection to Kubernetes using `https://localhost:8081` as the endpoint (or whatever the port that your kubernetes proxy is running on)
* In the Entity mapping tab under Advanced Properties choose "Sync Type" as POLL

> In order to use the kubernetes adapter you will need to get the license from ConnectALL sales team. Please reach out to sales@connectall.com for licenses and quotes.

