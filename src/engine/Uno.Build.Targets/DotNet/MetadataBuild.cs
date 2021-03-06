﻿using Uno.Compiler.API.Backends;
using Uno.Compiler.Backends.Metadata;
using Uno.Compiler.Backends.OpenGL;

namespace Uno.Build.Targets.DotNet
{
    public class MetadataBuild : BuildTarget
    {
        public override string Identifier => "Metadata";
        public override string Description => "Metadata for code completion.";
        public override bool IsExperimental => true;
        public override bool DefaultStrip => false;

        public override Backend CreateBackend()
        {
            return new MetadataBackend(new GLBackend());
        }
    }
}
