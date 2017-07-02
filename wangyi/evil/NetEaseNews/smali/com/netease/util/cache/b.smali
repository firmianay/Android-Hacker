.class Lcom/netease/util/cache/b;
.super Lcom/netease/util/cache/k;


# instance fields
.field final synthetic a:Lcom/netease/util/cache/a;


# direct methods
.method constructor <init>(Lcom/netease/util/cache/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/cache/b;->a:Lcom/netease/util/cache/a;

    invoke-direct {p0, p2, p3}, Lcom/netease/util/cache/k;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/netease/util/cache/r;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
