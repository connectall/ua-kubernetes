# ConnectALL Kubernetes Adapter 

ConnectALL Kubernetes Adapter is developed as an extension to the Universal Adapter capability of ConnectALL. The adapter specifications will let the user create a kubernetes deployment and get the status of all running deployments. This would be very useful in a configuration control environment like ServiceNow where a ticket (like a CI issue) is created to start a deployment.

Please refer to https://wiki.connectall.com/ca/latest/user-guide/adapters/custom-application-adapter for more information


# How to use

## Import specifications
* Import kubernetes_config.zip into ConnectALL using "Install custom adapter" feature.

## Define application links
* Create an application link in ConnectALL between Kubernetes and a destination application of your choice
* Navigate to `Configuration -> Connections` screen and create a new connection to Kubernetes using `https://localhost:8081` as the endpoint (or whatever the port that your kubernetes proxy is running on)
* In the Entity mapping tab under Advanced Properties choose "Sync Type" as POLL

> In order to use the kubernetes adapter you will need to get the license from ConnectALL sales team. Please reach out to sales@connectall.com for licenses and quotes.

