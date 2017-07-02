.class Lcom/netease/nr/biz/i/c/g;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/netease/nr/biz/i/c/g;->a:I

    iput p3, p0, Lcom/netease/nr/biz/i/c/g;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/biz/i/c/g;->a:I

    iget v2, p0, Lcom/netease/nr/biz/i/c/g;->b:I

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/i/c/a;->a(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/c/g;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
