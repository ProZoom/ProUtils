.class final Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;
.super Ljava/lang/Object;
.source "Lang.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jarjar/apache/commons/codec/language/bm/Lang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LangRule"
.end annotation


# instance fields
.field private final acceptOnMatch:Z

.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Ljava/util/regex/Pattern;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "acceptOnMatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;->pattern:Ljava/util/regex/Pattern;

    .line 89
    iput-object p2, p0, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;->languages:Ljava/util/Set;

    .line 90
    iput-boolean p3, p0, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;->acceptOnMatch:Z

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;Ljava/util/Set;ZLorg/jarjar/apache/commons/codec/language/bm/Lang$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/regex/Pattern;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/jarjar/apache/commons/codec/language/bm/Lang$1;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;-><init>(Ljava/util/regex/Pattern;Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;->acceptOnMatch:Z

    return v0
.end method

.method static synthetic access$200(Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;->languages:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jarjar/apache/commons/codec/language/bm/Lang$LangRule;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method