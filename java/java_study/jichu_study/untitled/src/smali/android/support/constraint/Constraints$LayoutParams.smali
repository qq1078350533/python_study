.class public Landroid/support/constraint/Constraints$LayoutParams;
.super Landroid/support/constraint/ConstraintLayout$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public an:F

.field public ao:Z

.field public ap:F

.field public aq:F

.field public ar:F

.field public as:F

.field public at:F

.field public au:F

.field public av:F

.field public aw:F

.field public ax:F

.field public ay:F

.field public az:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->an:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ao:Z

    const/4 p2, 0x0

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ap:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->aq:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ar:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->as:F

    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->at:F

    iput p1, p0, Landroid/support/constraint/Constraints$LayoutParams;->au:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->av:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->aw:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ax:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ay:F

    iput p2, p0, Landroid/support/constraint/Constraints$LayoutParams;->az:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->an:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/constraint/Constraints$LayoutParams;->ao:Z

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ap:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->aq:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ar:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->as:F

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->at:F

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->au:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->av:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->aw:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ax:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ay:F

    iput v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->az:F

    sget-object v0, Landroid/support/constraint/b$b;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->an:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->an:F

    goto/16 :goto_2

    :cond_0
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ap:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->ap:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->ao:Z

    goto/16 :goto_2

    :cond_1
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ar:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->ar:F

    goto/16 :goto_2

    :cond_2
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->as:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->as:F

    goto :goto_2

    :cond_3
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->aq:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->aq:F

    goto :goto_2

    :cond_4
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_5

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->at:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->at:F

    goto :goto_2

    :cond_5
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_6

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->au:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->au:F

    goto :goto_2

    :cond_6
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_7

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->av:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->av:F

    goto :goto_2

    :cond_7
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_8

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->aw:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->aw:F

    goto :goto_2

    :cond_8
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_9

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ax:F

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->ax:F

    goto :goto_2

    :cond_9
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_a

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->ay:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/constraint/Constraints$LayoutParams;->ay:F

    goto :goto_2

    :cond_a
    sget v2, Landroid/support/constraint/b$b;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_b

    iget v2, p0, Landroid/support/constraint/Constraints$LayoutParams;->az:F

    goto :goto_1

    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
