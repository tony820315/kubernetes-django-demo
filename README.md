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

## Demo
- Minikube dashboard

![](https://i.imgur.com/ry1Kvc1.png)
- Celery flower

![](https://i.imgur.com/WeT7kRg.png)
- Shopping cart

![](https://i.imgur.com/nGpho24.png)
- Django admin

![](https://i.imgur.com/5ME21VU.png)




## Prerequisites
The following are needed to run k8s-django-demo
- Minikube (version: [1.10.1](https://github.com/kubernetes/minikube/releases/tag/v1.11.0))
- Kubectl (version: [1.18.3](https://kubernetes.io/docs/setup/release/notes/))
- Python (versiob [3.6](https://www.python.org/downloads/release/python-360/))
- Django (version [3.0.6](https://docs.djangoproject.com/en/3.0/releases/3.0.6/))
