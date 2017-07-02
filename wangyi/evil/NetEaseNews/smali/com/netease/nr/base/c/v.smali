.class public Lcom/netease/nr/base/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:J

.field private e:J

.field private final f:F

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Vibrator;

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/netease/nr/base/c/v;->f:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->g:Ljava/util/List;

    new-instance v0, Lcom/netease/nr/base/c/w;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/c/w;-><init>(Lcom/netease/nr/base/c/v;)V

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->k:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->l:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/nr/base/c/v;->c()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/c/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/c/v;->i:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->a:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->c:Landroid/hardware/Sensor;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/c/v;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/netease/nr/base/c/v;->j:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/netease/nr/base/c/v;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/netease/nr/base/c/v;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v2, p0, Lcom/netease/nr/base/c/v;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/c/v;->i:Z

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/c/v;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/nr/base/c/x;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/c/v;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/netease/nr/base/c/v;->h:Z

    iput-wide v2, p0, Lcom/netease/nr/base/c/v;->e:J

    iput-wide v2, p0, Lcom/netease/nr/base/c/v;->d:J

    iput-boolean v1, p0, Lcom/netease/nr/base/c/v;->i:Z

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/c/v;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/netease/nr/base/c/x;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/v;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/netease/nr/base/c/v;->h:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/netease/nr/base/c/v;->d:J

    sub-long v1, v5, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/netease/nr/base/c/v;->e:J

    sub-long v7, v5, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/netease/nr/base/c/v;->i:Z

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x64

    sub-long/2addr v1, v3

    move-wide v3, v1

    :goto_1
    const-wide/16 v1, 0x50

    cmp-long v1, v3, v1

    if-ltz v1, :cond_0

    const-wide/16 v1, 0x7d0

    cmp-long v1, v7, v1

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/netease/nr/base/c/v;->d:J

    const-wide/16 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    const v16, 0x3dcccccd    # 0.1f

    mul-float v16, v16, v13

    const v17, 0x3f666666    # 0.9f

    mul-float v10, v10, v17

    add-float v10, v10, v16

    const v16, 0x3dcccccd    # 0.1f

    mul-float v16, v16, v14

    const v17, 0x3f666666    # 0.9f

    mul-float v11, v11, v17

    add-float v11, v11, v16

    const v16, 0x3dcccccd    # 0.1f

    mul-float v16, v16, v15

    const v17, 0x3f666666    # 0.9f

    mul-float v12, v12, v17

    add-float v12, v12, v16

    sub-float v10, v13, v10

    sub-float v11, v14, v11

    sub-float v12, v15, v12

    sub-float v7, v10, v7

    sub-float v8, v11, v8

    sub-float v9, v12, v9

    mul-float v10, v7, v7

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    long-to-double v12, v3

    div-double/2addr v10, v12

    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v12

    cmpl-double v10, v10, v1

    if-lez v10, :cond_2

    mul-float v1, v7, v7

    mul-float v2, v8, v8

    add-float/2addr v1, v2

    mul-float v2, v9, v9

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v1, v3

    :cond_2
    const-wide v3, 0x4097700000000000L    # 1500.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/netease/nr/base/c/v;->i:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/netease/nr/base/c/v;->i:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->l:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/base/c/v;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->l:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/base/c/v;->k:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->l:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/base/c/v;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/netease/nr/base/c/v;->i:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->j:Landroid/os/Vibrator;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->j:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->j:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_4
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/netease/nr/base/c/v;->e:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/c/v;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/c/x;

    invoke-interface {v1}, Lcom/netease/nr/base/c/x;->e()V

    goto :goto_2

    :cond_5
    move-wide v3, v1

    goto/16 :goto_1
.end method
