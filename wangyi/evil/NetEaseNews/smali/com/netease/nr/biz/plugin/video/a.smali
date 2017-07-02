.class public Lcom/netease/nr/biz/plugin/video/a;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private a:Landroid/widget/VideoView;

.field private e:Landroid/widget/MediaController;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/video/a;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->i:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/biz/plugin/video/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/plugin/video/b;-><init>(Lcom/netease/nr/biz/plugin/video/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    if-eqz v1, :cond_1

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "flv.bn"

    const-string v2, "flv4.bn"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/plugin/video/a;->b(Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/video/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/plugin/video/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/plugin/video/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/plugin/video/a;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03009d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/plugin/video/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ovideo_sum"

    const-string v2, "\u65b0\u95fb\u89c6\u9891"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    if-ne v0, v4, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "VIDEO_POSITION"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    iput-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->e:Landroid/widget/MediaController;

    iput-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/video/a;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01b3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onPause()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/video/a;->g:Z

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/plugin/video/a;->b(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    iget v1, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iput v2, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->e:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestLayout()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/video/a;->h:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netease/nr/biz/plugin/video/a;->h:Z

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/plugin/video/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "VIDEO_POSITION"

    iget v1, p0, Lcom/netease/nr/biz/plugin/video/a;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c01e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/video/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->e:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/video/a;->e:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/a;->a:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method
