# gloo-mesh-demo-aoa
This repo leverages the Argo CD app-of-apps pattern to demonstrate a GitOps workflow to deploy and configure a multi-cluster mesh demo
 
Spin up three clusters named `cluster1`, `cluster2`, and `mgmt`

Run:
```
./deploy.sh
```

Resource Requirements:
- This demo has been tested on 1x `n2-standard-4` (gke), `m5.xlarge` (aws), or `Standard_DS3_v2` (azure) instance for `mgmt` cluster
- This demo has been tested on 2x `n2-standard-4` (gke), `m5.xlarge` (aws), or `Standard_DS3_v2` (azure) instances for `cluster1` and `cluster2`

Note:
- A temporary (2 day currently) license key is used here for demonstration purposes
- By default, the script expects to deploy into three clusters named `mgmt`, `cluster1`, and `cluster2`. This is configurable by changing the variables in the `deploy.sh`. A check is done to ensure that the defined contexts exist before proceeding with the installation.
- Although you may change the contexts where apps are deployed as describe above, the Istio cluster names will remain stable references `cluster1` and `cluster2`