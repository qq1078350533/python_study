.class final Lcom/bigkoo/pickerview/lib/a;
.super Ljava/util/TimerTask;


# instance fields
.field a:F

.field final b:F

.field final c:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iput p2, p0, Lcom/bigkoo/pickerview/lib/a;->b:F

    const/high16 p1, 0x4f000000

    iput p1, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v2, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    goto :goto_1

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->b:F

    :goto_0
    iput v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x7d0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v4, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    int-to-float v0, v0

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-boolean v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    iget-object v4, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v4, v4, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v5}, Lcom/bigkoo/pickerview/lib/WheelView;->getItemsCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v6, v6, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v6, v6, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    float-to-double v6, v6

    float-to-double v8, v3

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v10, v4

    cmpg-double v3, v6, v10

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    add-float v4, v3, v0

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    float-to-double v6, v3

    add-double/2addr v6, v8

    float-to-double v8, v5

    cmpl-double v3, v6, v8

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    add-float v5, v3, v0

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    float-to-int v3, v4

    int-to-float v3, v3

    iput v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    float-to-int v3, v5

    int-to-float v3, v3

    iput v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    const/high16 v0, -0x3de00000    # -40.0f

    iput v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    :cond_7
    :goto_4
    iget v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    add-float/2addr v0, v2

    goto :goto_5

    :cond_8
    sub-float/2addr v0, v2

    :goto_5
    iput v0, p0, Lcom/bigkoo/pickerview/lib/a;->a:F

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/a;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    goto/16 :goto_2
.end method
