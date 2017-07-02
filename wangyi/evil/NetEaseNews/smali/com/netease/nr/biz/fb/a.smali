.class Lcom/netease/nr/biz/fb/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->b(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v1}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->d(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feedback_account"

    iget-object v3, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v3}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    const v1, 0x7f0b021b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    iget-object v1, v1, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/nr/biz/fb/b;

    invoke-direct {v2, p0, v0}, Lcom/netease/nr/biz/fb/b;-><init>(Lcom/netease/nr/biz/fb/a;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
