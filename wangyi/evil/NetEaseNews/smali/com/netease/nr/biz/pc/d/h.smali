.class Lcom/netease/nr/biz/pc/d/h;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/h;->a:Landroid/content/Context;

    iput p2, p0, Lcom/netease/nr/biz/pc/d/h;->b:I

    iput p3, p0, Lcom/netease/nr/biz/pc/d/h;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/h;->a:Landroid/content/Context;

    iget v1, p0, Lcom/netease/nr/biz/pc/d/h;->b:I

    iget v2, p0, Lcom/netease/nr/biz/pc/d/h;->c:I

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/pc/d/e;->a(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/h;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
