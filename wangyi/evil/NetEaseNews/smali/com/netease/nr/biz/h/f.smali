.class Lcom/netease/nr/biz/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/f;->a:Lcom/netease/nr/biz/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/biz/h/f;->a:Lcom/netease/nr/biz/h/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
