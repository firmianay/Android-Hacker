.class Lcom/tencent/open/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/c;


# instance fields
.field private a:Lcom/tencent/tauth/c;


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    invoke-interface {v0}, Lcom/tencent/tauth/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/tauth/f;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/c;->a(Lcom/tencent/tauth/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/c;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/r;->a:Lcom/tencent/tauth/c;

    :cond_0
    return-void
.end method
