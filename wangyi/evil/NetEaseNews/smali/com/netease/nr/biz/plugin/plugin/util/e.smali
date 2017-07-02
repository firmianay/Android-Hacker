.class Lcom/netease/nr/biz/plugin/plugin/util/e;
.super Lcom/netease/nr/base/fragment/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/netease/nr/base/view/MyEditText;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/MyEditText;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
