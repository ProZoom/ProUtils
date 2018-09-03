.class Lcom/sunrise/f/b;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:I

.field static c:I


# instance fields
.field private final d:[Lcom/sunrise/h/c;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/sunrise/f/av;

.field private final g:Z

.field private h:Ljava/util/Map;

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/sunrise/f/b;->a:I

    const/4 v0, 0x7

    sput v0, Lcom/sunrise/f/b;->b:I

    const/16 v0, 0x8

    sput v0, Lcom/sunrise/f/b;->c:I

    return-void
.end method

.method public constructor <init>([Lcom/sunrise/h/c;Lcom/sunrise/f/av;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    const/16 v0, 0x9

    iput v0, p0, Lcom/sunrise/f/b;->i:I

    iput-object p1, p0, Lcom/sunrise/f/b;->d:[Lcom/sunrise/h/c;

    iput-object p3, p0, Lcom/sunrise/f/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunrise/f/b;->f:Lcom/sunrise/f/av;

    iput-boolean p4, p0, Lcom/sunrise/f/b;->g:Z

    iput-boolean p5, p0, Lcom/sunrise/f/b;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/sunrise/f/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/f/b;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/sunrise/f/b;)I
    .locals 1

    iget v0, p0, Lcom/sunrise/f/b;->i:I

    return v0
.end method

.method static synthetic c(Lcom/sunrise/f/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sunrise/f/b;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/sunrise/f/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/sunrise/f/b;)Lcom/sunrise/f/av;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/b;->f:Lcom/sunrise/f/av;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    iget v1, p0, Lcom/sunrise/f/b;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/f/b;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    iget v1, p0, Lcom/sunrise/f/b;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/sunrise/f/b;->i:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sunrise/f/b;->i:I

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sunrise/f/b;->d:[Lcom/sunrise/h/c;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/sunrise/f/b;->d:[Lcom/sunrise/h/c;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
