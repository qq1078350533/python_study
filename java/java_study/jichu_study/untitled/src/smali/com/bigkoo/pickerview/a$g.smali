.class public final Lcom/bigkoo/pickerview/a$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final pickerview:[I

.field public static final pickerview_pickerview_dividerColor:I = 0x0

.field public static final pickerview_pickerview_gravity:I = 0x1

.field public static final pickerview_pickerview_lineSpacingMultiplier:I = 0x2

.field public static final pickerview_pickerview_textColorCenter:I = 0x3

.field public static final pickerview_pickerview_textColorOut:I = 0x4

.field public static final pickerview_pickerview_textSize:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bigkoo/pickerview/a$g;->pickerview:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04019e
        0x7f04019f
        0x7f0401a0
        0x7f0401a1
        0x7f0401a2
        0x7f0401a3
    .end array-data
.end method
