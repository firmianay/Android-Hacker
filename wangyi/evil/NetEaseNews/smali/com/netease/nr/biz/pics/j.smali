.class Lcom/netease/nr/biz/pics/j;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nr/biz/pics/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/pics/j;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/nr/biz/pics/j;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/j;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/j;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/nr/biz/pics/j;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/pics/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/j;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
