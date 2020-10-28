.class final Lcom/bigkoo/pickerview/lib/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final a:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/b;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/b;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1, p4}, Lcom/bigkoo/pickerview/lib/WheelView;->a(F)V

    const/4 p1, 0x1

    return p1
.end method
