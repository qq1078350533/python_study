.class public Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconTreeItem"
.end annotation


# instance fields
.field public hasSub:Z

.field public isFirstLevel:Z

.field public text:Lnet/lawyee/mobilelib/vo/BaseVO;


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilelib/vo/BaseVO;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->hasSub:Z

    iput-boolean p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->isFirstLevel:Z

    return-void
.end method
