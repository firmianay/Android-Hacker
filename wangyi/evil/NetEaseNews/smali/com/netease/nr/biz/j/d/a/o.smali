.class public Lcom/netease/nr/biz/j/d/a/o;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)I
    .locals 2

    const/4 v0, 0x0

    rem-int/lit8 v1, p0, 0x4

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0202f7

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0202f8

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202fb

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0202fe

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0c0293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040022

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;)V
    .locals 22

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v11, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v13

    const/4 v3, 0x0

    :try_start_0
    const-string v2, "voteitem"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v2

    :goto_0
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v2

    move-object v10, v4

    goto :goto_0

    :cond_1
    const-string v2, "vote_position"

    const/4 v4, -0x2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v14

    invoke-static/range {p2 .. p2}, Lcom/netease/nr/biz/j/d/g;->b(Ljava/util/Map;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, -0x2

    if-eq v14, v2, :cond_6

    const/4 v2, 0x1

    move v7, v2

    :goto_1
    const v2, 0x7f0c027b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static/range {p3 .. p3}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/netease/util/i/b;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_2
    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v16, v0

    const/4 v3, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_2
    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    const v2, 0x7f0300ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0c0291

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    const v2, 0x7f0c0292

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    const v2, 0x7f070080

    invoke-virtual {v13, v3, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v2, 0x7f070080

    invoke-virtual {v13, v4, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v2, 0x7f0c0294

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    const v2, 0x7f0c0295

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    const v2, 0x7f070082

    invoke-virtual {v13, v6, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v19, "num"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/h/b;->g(Ljava/lang/String;)I

    move-result v2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b019d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-long v0, v15

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Lcom/netease/util/h/b;->a(IJ)F

    move-result v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, ". "

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v2, v2, v19

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setWidth(I)V

    const/16 v2, 0xa

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setHeight(I)V

    invoke-static {v8}, Lcom/netease/nr/biz/j/d/a/o;->a(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v2, 0x7f040023

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    if-ne v8, v14, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/netease/nr/biz/j/d/g;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/netease/nr/biz/j/d/a/o;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v2, "vote_position"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, v19

    float-to-int v2, v2

    add-int v3, v9, v2

    add-int/lit8 v4, v17, -0x1

    if-ne v8, v4, :cond_5

    rsub-int/lit8 v4, v3, 0x64

    add-int/2addr v2, v4

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto/16 :goto_2

    :cond_6
    move v7, v3

    goto/16 :goto_1
.end method
