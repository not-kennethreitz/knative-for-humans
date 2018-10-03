# Knative for Humans (for Kubernetes)


## Step 1: Install Knative

### Install Istio

    $ kubectl apply -f https://raw.githubusercontent.com/knative/serving/v0.1.1/third_party/istio-0.8.0/istio.yaml
    $ kubectl label namespace default istio-injection=enabled

It will take a few minutes for all the components to be up and running; you can run `$ kubectl get pods --namespace istio-system --watch` to see the current status.

### Installing Knative

    $ kubectl apply -f https://github.com/knative/serving/releases/download/v0.1.1/release.yaml

It will take a few moments for all the components to be up and running; you can run `$ kubectl get pods --namespace knative-serving --watch` to see the current status.

## Step 2: Install a Docker Registry for Knative

    $ kubectl apply -f https://raw.githubusercontent.com/kennethreitz/knative-for-humans/master/deploy/knative-registry.yml

The default size of the registry data volume is 80GiB. You can change this, to meet your requirements.
