echo "Change to openai-codex instead of openai-codex-bin"

if myarchy-pkg-present openai-codex-bin; then
    myarchy-pkg-drop openai-codex-bin
    myarchy-pkg-add openai-codex
fi
