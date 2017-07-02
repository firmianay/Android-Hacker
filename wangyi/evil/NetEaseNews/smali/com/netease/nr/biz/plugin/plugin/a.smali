.class Lcom/netease/nr/biz/plugin/plugin/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/plugin/MailPlugin;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/plugin/MailPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/a;->a:Lcom/netease/nr/biz/plugin/plugin/MailPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/a;->a:Lcom/netease/nr/biz/plugin/plugin/MailPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/MailPlugin;->G()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
