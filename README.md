# Knative for Humans (for Kubernetes)


## Step 1: Install Knative

### Install Istio

    $ kubectl apply -f https://raw.githubusercontent.com/knative/serving/v0.1.1/third_party/istio-0.8.0/istio.yaml

### Label the default namespace

    $ kubectl label namespace default istio-injection=enabled

It will take a few minutes for all the components to be up and running; you can run `kubectl get pods --namespace istio-system --watch` to see the current status.

### Installing Knative Build

    $ kubectl apply -f https://raw.githubusercontent.com/knative/serving/v0.1.1/third_party/config/build/release.yaml

It will take a few moments for all the components to be up and running; you can run `kubectl get pods --namespace knative-build --watch` to see the current status.

## Step 2: Install a Docker Registry for Knative

    $ kubectl apply -f ...

The default size of the registry data volume is 80GiB. You can change this, to meet your requirements.
