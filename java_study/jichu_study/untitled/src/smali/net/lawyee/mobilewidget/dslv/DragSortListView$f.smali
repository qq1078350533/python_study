.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/io/File;

.field final synthetic c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V
    .locals 2

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->d:I

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->e:I

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->f:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "dslv_state.txt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->b:Ljava/io/File;

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    const-string p1, "mobeta"

    const-string v0, "file created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "mobeta"

    const-string v1, "Could not create dslv_state.txt"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mobeta"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->f:Z

    return-void
.end method

.method public b()V
    .locals 8

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVState>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v3, "    <Positions>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    add-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v5, v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v5, v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->l(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->l(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->c(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->l(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->d(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->m(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->m(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->c(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->m(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->d(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->h(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->j(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</SrcHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->x(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->r(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    add-int v6, v1, v3

    invoke-virtual {v5, v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v5, v6, v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v1, "</ShuffleEdges>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVState>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->d:I

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->d:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c()V

    iput v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->d:I

    :cond_5
    return-void
.end method

.method public c()V
    .locals 5

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->b:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$f;->f:Z

    :cond_0
    return-void
.end method
