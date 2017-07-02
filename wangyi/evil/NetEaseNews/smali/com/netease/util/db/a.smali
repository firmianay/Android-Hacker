.class Lcom/netease/util/db/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/util/db/a;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/net/Uri;)Lcom/netease/util/db/a;
    .locals 2

    const-string v0, "raw_query"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "raw_sql"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/netease/util/db/a;

    invoke-direct {v1, v0}, Lcom/netease/util/db/a;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
