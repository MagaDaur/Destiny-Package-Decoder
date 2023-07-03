// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[23];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float3 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[7].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    r0.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r1.x = 32767.0996 * v0.w;
    r1.y = 32767.0996 * v1.w;
    r1.xy = (int2)r1.xy;
    r1.z = max((int)r1.x, (int)-r1.x);
    r1.w = cmp((int)r1.z >= 2048);
    r2.x = cmp((int)r1.x < 0);
    r2.y = (uint)v4.x << 1;
    r2.y = r2.x ? r2.y : v4.x;
    r1.z = (uint)r1.z << 3;
    r1.z = (int)r1.z + 0xffffc000;
    bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.z = (((uint)r2.y << 0) & bitmask.z) | ((uint)r1.z & ~bitmask.z);
    r3.xyzw = t1.Load(r1.z).xyzw;
    r1.y = max(0, (int)r1.y);
    r2.y = (uint)r1.y << 5;
    r2.y = (int)r2.y & 1792;
    r2.y = (int)r2.y | (int)r3.x;
    r1.x = r1.w ? r2.y : r1.x;
    r2.y = (uint)r1.x << 2;
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.z = (((uint)r1.x << 2) & bitmask.z) | ((uint)1 & ~bitmask.z);
    bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r2.w = (((uint)r1.x << 2) & bitmask.w) | ((uint)2 & ~bitmask.w);
    if (r1.w != 0) {
      r1.x = (uint)r1.y << 2;
      r1.x = (int)r1.x & 1792;
      r1.x = (int)r1.x | (int)r3.y;
      r3.xy = (uint2)r3.zw;
      r3.xy = float2(0.00392156886,0.00392156886) * r3.xy;
      r4.x = cb1[r2.y+8].w;
      r4.y = cb1[r2.z+8].w;
      r4.z = cb1[r2.w+8].w;
      r1.w = (uint)r1.x << 2;
      bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.z = (((uint)r1.x << 2) & bitmask.z) | ((uint)1 & ~bitmask.z);
      bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r3.w = (((uint)r1.x << 2) & bitmask.w) | ((uint)2 & ~bitmask.w);
      r5.xyz = cb1[r1.w+8].xyz * r3.yyy;
      r6.x = cb1[r1.w+8].w * r3.y;
      r6.y = cb1[r3.z+8].w * r3.y;
      r6.z = cb1[r3.w+8].w * r3.y;
      r7.xyz = cb1[r3.z+8].xyz * r3.yyy;
      r3.yzw = cb1[r3.w+8].xyz * r3.yyy;
      r5.xyz = cb1[r2.y+8].xyz * r3.xxx + r5.xyz;
      r4.xyz = r4.xyz * r3.xxx + r6.xyz;
      r6.xyz = cb1[r2.z+8].xyz * r3.xxx + r7.xyz;
      r3.xyz = cb1[r2.w+8].xyz * r3.xxx + r3.yzw;
      if (r2.x != 0) {
        r1.x = (int)r1.z + 1;
        r7.xyzw = t1.Load(r1.x).xyzw;
        r1.xyzw = (uint4)r1.yyyy >> int4(1,1,4,4);
        r1.xyzw = (int4)r1.xyzw & int4(1792,1792,1792,1792);
        r1.xyzw = (int4)r1.xyzw | (int4)r7.xxyy;
        r7.xy = (uint2)r7.zw;
        r7.xy = float2(0.00392156886,0.00392156886) * r7.xy;
        r7.zw = (uint2)r1.yw << int2(2,2);
        bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.x = (((uint)r1.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
        bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.y = (((uint)r1.y << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
        bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.z = (((uint)r1.z << 2) & bitmask.z) | ((uint)1 & ~bitmask.z);
        bitmask.w = ((~(-1 << 30)) << 2) & 0xffffffff;  r1.w = (((uint)r1.w << 2) & bitmask.w) | ((uint)2 & ~bitmask.w);
        r8.x = cb1[r7.z+8].w * r7.x;
        r8.y = cb1[r1.x+8].w * r7.x;
        r8.z = cb1[r1.y+8].w * r7.x;
        r9.xyz = r7.xxx * cb1[r7.z+8].xyz + r5.xyz;
        r8.xyz = r8.xyz + r4.xyz;
        r10.xyz = r7.xxx * cb1[r1.x+8].xyz + r6.xyz;
        r11.xyz = r7.xxx * cb1[r1.y+8].xyz + r3.xyz;
        r12.x = cb1[r7.w+8].w * r7.y;
        r12.y = cb1[r1.z+8].w * r7.y;
        r12.z = cb1[r1.w+8].w * r7.y;
        r5.xyz = r7.yyy * cb1[r7.w+8].xyz + r9.xyz;
        r4.xyz = r12.xyz + r8.xyz;
        r6.xyz = r7.yyy * cb1[r1.z+8].xyz + r10.xyz;
        r3.xyz = r7.yyy * cb1[r1.w+8].xyz + r11.xyz;
      }
    } else {
      r5.xyz = cb1[r2.y+8].xyz;
      r4.x = cb1[r2.y+8].w;
      r4.y = cb1[r2.z+8].w;
      r4.z = cb1[r2.w+8].w;
      r6.xyz = cb1[r2.z+8].xyz;
      r3.xyz = cb1[r2.w+8].xyz;
    }
    r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
    r2.xyz = cb12[15].xyz + r4.xyz;
    r5.w = r2.x;
    r1.w = 1;
    r4.x = dot(r5.xyzw, r1.xyzw);
    r6.w = r2.y;
    r4.y = dot(r6.xyzw, r1.xyzw);
    r3.w = r2.z;
    r4.z = dot(r3.xyzw, r1.xyzw);
    r1.xyzw = cb12[1].xyzw * r4.yyyy;
    r1.xyzw = cb12[0].xyzw * r4.xxxx + r1.xyzw;
    r1.xyzw = cb12[2].xyzw * r4.zzzz + r1.xyzw;
    r1.xyzw = cb12[14].xyzw + r1.xyzw;
    r2.x = dot(v1.xyz, v1.xyz);
    r2.x = rsqrt(r2.x);
    r2.xyz = v1.xyz * r2.xxx;
    r7.x = dot(r5.xyz, r2.xyz);
    r7.y = dot(r6.xyz, r2.xyz);
    r7.z = dot(r3.xyz, r2.xyz);
    r2.x = dot(r7.xyz, r7.xyz);
    r2.x = rsqrt(r2.x);
    r2.xyz = r7.xyz * r2.xxx;
    r2.w = dot(v2.xyz, v2.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = v2.xyz * r2.www;
    r5.x = dot(r5.xyz, r7.xyz);
    r5.y = dot(r6.xyz, r7.xyz);
    r5.z = dot(r3.xyz, r7.xyz);
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r3.xyzw = r5.xyzz * r2.wwww;
    r5.xyz = r3.ywx * r2.zxy;
    r5.xyz = r2.yzx * r3.wxy + -r5.xyz;
    o2.xyz = v2.www * r5.xyz;
    r5.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    r6.xy = r5.zw * cb0[2].xy + cb0[2].zw;
    r2.w = t3.SampleLevel(s1_s, r6.xy, 0).x;
    r2.w = saturate(r2.w * cb0[3].x + cb0[3].y);
    r2.w = cb0[1].x * r2.w;
    r6.xyz = cb0[0].xyz * r2.www;
    r4.xyz = cb0[0].xyz * r2.www + r4.xyz;
    o4.xyz = cb12[7].xyz + r4.xyz;
    r4.xyzw = cb12[1].xyzw * r6.yyyy;
    r4.xyzw = cb12[0].xyzw * r6.xxxx + r4.xyzw;
    r4.xyzw = cb12[2].xyzw * r6.zzzz + r4.xyzw;
    r0.xyzw = r4.xyzw + r1.xyzw;
    o0.xyz = r2.xyz;
    o0.w = 1;
    o1.xyzw = r3.xyzw;
    o3.xyzw = r5.xyzw;
  }
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r2.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r1.x = r2.x * r1.z + r1.x;
  r3.x = -1 + r1.x;
  r1.x = -1 + r1.y;
  r3.y = r2.y * r1.w + -r1.x;
  r0.xy = r3.xy * r0.ww;
  o5.xyzw = r0.xyzw;
  return;
}