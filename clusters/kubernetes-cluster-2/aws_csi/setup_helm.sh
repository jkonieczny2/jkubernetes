echo "Adding CSI driver to helm repo"
helm repo add aws-ebs-csi-driver https://kubernetes-sigs.github.io/aws-ebs-csi-driver

echo "Updating help repo"
helm repo update

echo "Installing AWS CSI driver"
helm upgrade --install aws-ebs-csi-driver \
    --namespace kube-system \
    aws-ebs-csi-driver/aws-ebs-csi-driver
    #-f values.yaml
