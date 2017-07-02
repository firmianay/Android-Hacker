.class Lcom/netease/nr/biz/news/detailpage/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/n;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->emulateShiftHeld()V

    const/4 v0, 0x1

    return v0
.end method
