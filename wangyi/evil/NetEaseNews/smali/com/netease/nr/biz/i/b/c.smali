.class Lcom/netease/nr/biz/i/b/c;
.super Lcom/netease/util/fragment/z;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nr/biz/i/b/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/netease/nr/biz/i/b/c;->b:I

    iput p4, p0, Lcom/netease/nr/biz/i/b/c;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/b/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/netease/nr/biz/i/b/c;->b:I

    iget v3, p0, Lcom/netease/nr/biz/i/b/c;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/i/b/d;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/c;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
