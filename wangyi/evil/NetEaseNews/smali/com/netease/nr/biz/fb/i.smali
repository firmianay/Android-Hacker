.class Lcom/netease/nr/biz/fb/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/fb/FeedBackDetailList;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/i;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/fb/i;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->b(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/i;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/i;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->c(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/netease/nr/biz/fb/i;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->d(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
