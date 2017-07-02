.class public Lcom/netease/nr/biz/sns/util/category/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/tauth/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "100346651"

    invoke-static {v0, p1}, Lcom/tencent/tauth/d;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/c/a;->a:Lcom/tencent/tauth/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://m.163.com/newsapp/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://3g.163.com/ntes/special/0034073A/qq_article.html?docid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/tencent/tauth/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/c/a;->a:Lcom/tencent/tauth/d;

    return-object v0
.end method
