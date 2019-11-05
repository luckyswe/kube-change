#!/bin/bash
cd /root/git-change/kube-change
kubectl get rc| grep -Po '.*(?=\s+[^\s]+$)' > replica-controller
kubectl describe svc > network-controller
git add .
git commit -a -m "new commit $time"
git push origin

