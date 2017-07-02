.class Lcom/netease/ad/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ad/c/e;


# instance fields
.field final synthetic a:Lcom/netease/ad/f;


# direct methods
.method constructor <init>(Lcom/netease/ad/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/g;->a:Lcom/netease/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/ad/e/a;)V
    .locals 5

    instance-of v0, p1, Lcom/netease/ad/e/d;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/netease/ad/e/d;

    invoke-virtual {v0}, Lcom/netease/ad/e/d;->c()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/netease/ad/e/d;

    invoke-virtual {p1}, Lcom/netease/ad/e/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez v1, :cond_2

    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/netease/ad/b/e;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v0, ""

    :goto_1
    sput-object v0, Lcom/netease/ad/b/e;->c:Ljava/lang/String;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const-string v3, "ntesaddata"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "city"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "province"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method
