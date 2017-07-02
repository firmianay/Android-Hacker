.class public interface abstract Lnet/oauth/http/HttpClient;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "connectTimeout"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final FOLLOW_REDIRECTS:Ljava/lang/String; = "followRedirects"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final READ_TIMEOUT:Ljava/lang/String; = "readTimeout"


# virtual methods
.method public abstract execute(Lnet/oauth/http/HttpMessage;Ljava/util/Map;)Lnet/oauth/http/HttpResponseMessage;
.end method
