// @apiVersion 0.1
// @name io.ksonnet.pkg.kubeflow-core
// @description Kubeflow core components
// @shortDescription Kubeflow core components. This currently includes JupyterHub and the TfJob controller.
// @param name string Name to give to each of the components
// @optionalParam namespace string default Namespace
// @optionalParam disks string null Comma separated list of Google persistent disks to attach to jupyter environments.
// @optionalParam cloud string null String identifying the cloud to customize the deployment for.
// @optionalParam tfAmbassadorServiceType string ClusterIP The service type for the API Gateway.
// @optionalParam tfJobImage string gcr.io/kubeflow-images-staging/tf_operator:v20180226-403 The image for the TfJob controller.
// @optionalParam tfDefaultImage string null The default image to use for TensorFlow.
// @optionalParam tfJobUiServiceType string ClusterIP The service type for the UI.
// @optionalParam jupyterHubServiceType string ClusterIP The service type for Jupyterhub.
// @optionalParam jupyterHubImage string gcr.io/kubeflow/jupyterhub-k8s:1.0.1 The image to use for JupyterHub.
// @optionalParam jupyterHubAuthenticator string null The authenticator to use
// @optionalParam reportUsage string false Whether or not to report Kubeflow usage to kubeflow.org.
// @optionalParam usageId string unknown_cluster Optional id to use when reporting usage to kubeflow.org

local k = import "k.libsonnet";
local all = import "kubeflow/core/all.libsonnet";

std.prune(k.core.v1.list.new(all.parts(params).all))
