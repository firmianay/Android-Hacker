.class Lcom/netease/nr/biz/news/detailpage/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/p;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/p;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/p;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/p;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V

    return-void
.end method
