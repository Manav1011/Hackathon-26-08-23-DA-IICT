from django.http import HttpResponse,JsonResponse
from django.contrib.auth import login,logout,authenticate


def base_view(request):    
    a = [x for x in range(10)]
    return JsonResponse(a,safe=False)
    