#/bin/bash
github_username="$1"

# sed commands to replace github_username variable

#platform-owners/cluster1
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster1/cluster1-apps.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster1/cluster1-cluster-config.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster1/cluster1-infra.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster1/cluster1-mesh-config.yaml

#platform-owners/cluster2
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster2/cluster2-apps.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster2/cluster2-cluster-config.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster2/cluster2-infra.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster2/cluster2-mesh-config.yaml

#platform-owners/cluster3
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster3/cluster3-apps.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster3/cluster3-cluster-config.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster3/cluster3-infra.yaml
sed -i -e "s/ably77/${github_username}/g" ../platform-owners/cluster3/cluster3-mesh-config.yaml