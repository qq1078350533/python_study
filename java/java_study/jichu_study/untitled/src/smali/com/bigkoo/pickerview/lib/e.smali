.class final Lcom/bigkoo/pickerview/lib/e;
.super Ljava/util/TimerTask;


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iput p2, p0, Lcom/bigkoo/pickerview/lib/e;->c:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bigkoo/pickerview/lib/e;->c:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    :cond_0
    iget v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xbb8

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget v4, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-boolean v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v3, v3, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v4}, Lcom/bigkoo/pickerview/lib/WheelView;->getItemsCount()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v2, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v2, v2, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget v3, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/e;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v0, v0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/e;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/e;->a:I

    :goto_1
    return-void
.end method
