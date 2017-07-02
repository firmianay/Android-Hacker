.class Lcom/netease/nr/base/view/ci;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ci;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/netease/nr/base/view/ci;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V

    return-void
.end method
