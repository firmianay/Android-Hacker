.class Lt4j/http/HttpClient$3;
.super Ljava/net/Authenticator;


# instance fields
.field final synthetic this$0:Lt4j/http/HttpClient;


# direct methods
.method constructor <init>(Lt4j/http/HttpClient;)V
    .locals 0

    iput-object p1, p0, Lt4j/http/HttpClient$3;->this$0:Lt4j/http/HttpClient;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    invoke-virtual {p0}, Lt4j/http/HttpClient$3;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0, v1}, Ljava/net/Authenticator$RequestorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lt4j/http/HttpClient$3;->this$0:Lt4j/http/HttpClient;

    # getter for: Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;
    invoke-static {v1}, Lt4j/http/HttpClient;->access$0(Lt4j/http/HttpClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt4j/http/HttpClient$3;->this$0:Lt4j/http/HttpClient;

    # getter for: Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;
    invoke-static {v2}, Lt4j/http/HttpClient;->access$1(Lt4j/http/HttpClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
