# 현재 쿠버네티스 인스턴스 확인
kubectl get all
# 현재 쿠버네티스 팟만 확인
kubectl get pod
# 현재 컨피그 맵 확인
kubectl describe cm/env-config
# 특정 팟 상태 확인
kubectl describe $pod_name
# 특정 팟 리소스 확인
kubectl top pod $pod_name
# 특정 컨테이너 들어가기 (container: kilometer-back, kilometer-front, kilometer-nginx)
kubectl exec -it $pod_name $container_name -- /bin/bash
# 특정 컨테이너 들어가기 에시
kubectl exec -it kilometer-back-b68d76bd7-bqzjs kilometer-back -- /bin/bash
# 배포
kubectl apply -f $path_yml_file
# 로그 조회
kubectl logs