// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture2D<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
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
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.x = t0.Load(r0.x).x;
  r0.yz = v0.yz * cb1[5].ww + cb1[5].yz;
  r0.y = r0.y + r0.z;
  r0.y = r0.y * cb0[2].x + cb0[1].x;
  r0.y = r0.x * cb0[3].x + r0.y;
  r0.y = cb0[4].w * r0.y + cb0[4].z;
  r0.z = round(r0.y);
  r0.y = r0.y + -r0.z;
  r0.z = abs(r0.y) * -16 + 8;
  r0.y = r0.y * r0.z;
  r0.z = abs(r0.y) * 0.224999994 + 0.774999976;
  r0.y = r0.y * r0.z;
  r0.y = cb0[4].x * r0.y + cb0[4].y;
  r0.y = cb0[0].x * r0.y;
  r0.x = r0.y * r0.x;
  r1.xy = cb0[5].xx * r0.xx;
  r1.z = cb0[6].x * r0.x;
  r0.x = 32767.0996 * v0.w;
  r0.x = (int)r0.x;
  r0.y = max((int)r0.x, (int)-r0.x);
  r0.z = cmp((int)r0.y >= 2048);
  r0.w = cmp((int)r0.x < 0);
  r1.w = (uint)v4.x << 1;
  r1.w = r0.w ? r1.w : v4.x;
  r0.y = (uint)r0.y << 3;
  r0.y = (int)r0.y + 0xffffc000;
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.y = (((uint)r1.w << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r2.xyzw = t1.Load(r0.y).xyzw;
  r0.x = r0.z ? r2.x : r0.x;
  r1.w = (int)r0.x * 3;
  r3.xy = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  if (r0.z != 0) {
    r0.xz = (uint2)r2.zw;
    r0.xz = float2(0.00392156886,0.00392156886) * r0.xz;
    r4.x = cb1[r1.w+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r2.x = (int)r2.y * 3;
    r2.yz = mad(int2(3,3), (int2)r2.yy, int2(1,2));
    r5.xyz = cb1[r2.x+8].xyz * r0.zzz;
    r6.x = cb1[r2.x+8].w * r0.z;
    r6.y = cb1[r2.y+8].w * r0.z;
    r6.z = cb1[r2.z+8].w * r0.z;
    r2.xyw = cb1[r2.y+8].xyz * r0.zzz;
    r7.xyz = cb1[r2.z+8].xyz * r0.zzz;
    r5.xyz = cb1[r1.w+8].xyz * r0.xxx + r5.xyz;
    r4.xyz = r4.xyz * r0.xxx + r6.xyz;
    r2.xyz = cb1[r3.x+8].xyz * r0.xxx + r2.xyw;
    r6.xyz = cb1[r3.y+8].xyz * r0.xxx + r7.xyz;
    if (r0.w != 0) {
      r0.x = (int)r0.y + 1;
      r0.xyzw = t1.Load(r0.x).xyzw;
      r0.zw = (uint2)r0.zw;
      r0.zw = float2(0.00392156886,0.00392156886) * r0.zw;
      r3.zw = (int2)r0.xy * int2(3,3);
      r7.xyzw = mad(int4(3,3,3,3), (int4)r0.xxyy, int4(1,2,1,2));
      r8.x = cb1[r3.z+8].w * r0.z;
      r8.y = cb1[r7.x+8].w * r0.z;
      r8.z = cb1[r7.y+8].w * r0.z;
      r9.xyz = r0.zzz * cb1[r3.z+8].xyz + r5.xyz;
      r8.xyz = r8.xyz + r4.xyz;
      r10.xyz = r0.zzz * cb1[r7.x+8].xyz + r2.xyz;
      r0.xyz = r0.zzz * cb1[r7.y+8].xyz + r6.xyz;
      r11.x = cb1[r3.w+8].w * r0.w;
      r11.y = cb1[r7.z+8].w * r0.w;
      r11.z = cb1[r7.w+8].w * r0.w;
      r5.xyz = r0.www * cb1[r3.w+8].xyz + r9.xyz;
      r4.xyz = r11.xyz + r8.xyz;
      r2.xyz = r0.www * cb1[r7.z+8].xyz + r10.xyz;
      r6.xyz = r0.www * cb1[r7.w+8].xyz + r0.xyz;
    }
  } else {
    r5.xyz = cb1[r1.w+8].xyz;
    r4.x = cb1[r1.w+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r2.xyz = cb1[r3.x+8].xyz;
    r6.xyz = cb1[r3.y+8].xyz;
  }
  r0.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r0.xyz = r0.xyz + r1.xyz;
  r1.xyz = cb12[15].xyz + r4.xyz;
  r5.w = r1.x;
  r0.w = 1;
  r1.x = dot(r5.xyzw, r0.xyzw);
  r2.w = r1.y;
  r1.y = dot(r2.xyzw, r0.xyzw);
  r6.w = r1.z;
  r0.x = dot(r6.xyzw, r0.xyzw);
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r1.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[14].xyzw + r0.xyzw;
  o0.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r0.x = r0.x * r1.z + r1.x;
  r2.x = -1 + r0.x;
  r0.x = -1 + r1.y;
  r2.y = r0.y * r1.w + -r0.x;
  o2.xy = r2.xy * r0.ww;
  o2.zw = r0.zw;
  return;
}