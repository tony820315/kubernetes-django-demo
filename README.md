# k8s-django-demo
k8s-django-demo is a demo that running django on Kubernetes Engine.

## How to get start 
```
$ kubectl apply -f postgres/  # See dashboard in browser
$ kubectl apply -f redis/
$ kubectl apply -f django/
$ kubectl apply -f celery/
$ kubectl apply -f flower/

kubectl exec -it <some-app-orange-pod-id> -- python /code/manage.py createsuperuser

# Show services in browser
$ minikube service django-service  # Wait if not ready
$ minikube service flower-service

```
## in GKE
### Setting firewall
$ gcloud compute firewall-rules create flower-node-port --allow tcp:5555
$ gcloud compute firewall-rules create django-node-port --allow tcp:8000


### Expose port as loadbalance
$ kubectl expose deployment django --name django-service-out -n develop --type LoadBalancer --port 8000 --target-port 8000
$ kubectl expose deployment flower --name django-flower-out -n develop --type LoadBalancer --port 5555 --target-port 5555


## Demo
- Minikube dashboard

![](https://github.com/tony820315/kubernetes-django-demo/blob/master/pic/Minikube_dashboard.png?raw=true)
- Celery flower

![](https://github.com/tony820315/kubernetes-django-demo/blob/master/pic/Celery_flower.png?raw=true)
- Shopping cart

![](https://github.com/tony820315/kubernetes-django-demo/blob/master/pic/Shopping_cart.png?raw=true)
- Django admin

![](https://github.com/tony820315/kubernetes-django-demo/blob/master/pic/Djang_admin.png?raw=true)

## Prerequisites
The following are needed to run k8s-django-demo
- Minikube (version: [1.10.1](https://github.com/kubernetes/minikube/releases/tag/v1.11.0))
- Kubectl (version: [1.18.3](https://kubernetes.io/docs/setup/release/notes/))
- Python (versiob [3.6](https://www.python.org/downloads/release/python-360/))
- Django (version [3.0.6](https://docs.djangoproject.com/en/3.0/releases/3.0.6/))
