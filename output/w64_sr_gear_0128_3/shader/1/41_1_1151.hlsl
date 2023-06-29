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
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.x = t0.Load(r0.x).x;
  r1.xyzw = v0.xxyz * cb1[5].wwww + cb1[5].xxyz;
  r0.y = cb0[0].x + r1.x;
  r0.y = cb0[1].w * r0.y + cb0[1].z;
  r0.z = round(r0.y);
  r0.y = r0.y + -r0.z;
  r0.z = abs(r0.y) * -16 + 8;
  r0.y = r0.y * r0.z;
  r0.z = abs(r0.y) * 0.224999994 + 0.774999976;
  r0.y = r0.y * r0.z;
  r0.y = cb0[1].x * r0.y + cb0[1].y;
  r0.y = r0.y * r0.x;
  r0.w = 32767.0996 * v0.w;
  r0.w = (int)r0.w;
  r1.x = max((int)r0.w, (int)-r0.w);
  r2.x = cmp((int)r1.x >= 2048);
  r2.y = cmp((int)r0.w < 0);
  r2.z = (uint)v4.x << 1;
  r2.z = r2.y ? r2.z : v4.x;
  r1.x = (uint)r1.x << 3;
  r1.x = (int)r1.x + 0xffffc000;
  bitmask.x = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.x = (((uint)r2.z << 0) & bitmask.x) | ((uint)r1.x & ~bitmask.x);
  r3.xyzw = t1.Load(r1.x).xyzw;
  r0.w = r2.x ? r3.x : r0.w;
  r2.z = (int)r0.w * 3;
  r4.xy = mad(int2(3,3), (int2)r0.ww, int2(1,2));
  if (r2.x != 0) {
    r2.xw = (uint2)r3.zw;
    r2.xw = float2(0.00392156886,0.00392156886) * r2.xw;
    r5.x = cb1[r2.z+8].w;
    r5.y = cb1[r4.x+8].w;
    r5.z = cb1[r4.y+8].w;
    r0.w = (int)r3.y * 3;
    r3.xy = mad(int2(3,3), (int2)r3.yy, int2(1,2));
    r6.xyz = cb1[r0.w+8].xyz * r2.www;
    r7.x = cb1[r0.w+8].w * r2.w;
    r7.y = cb1[r3.x+8].w * r2.w;
    r7.z = cb1[r3.y+8].w * r2.w;
    r3.xzw = cb1[r3.x+8].xyz * r2.www;
    r8.xyz = cb1[r3.y+8].xyz * r2.www;
    r6.xyz = cb1[r2.z+8].xyz * r2.xxx + r6.xyz;
    r5.xyz = r5.xyz * r2.xxx + r7.xyz;
    r3.xyz = cb1[r4.x+8].xyz * r2.xxx + r3.xzw;
    r7.xyz = cb1[r4.y+8].xyz * r2.xxx + r8.xyz;
    if (r2.y != 0) {
      r0.w = (int)r1.x + 1;
      r8.xyzw = t1.Load(r0.w).xyzw;
      r2.xy = (uint2)r8.zw;
      r2.xy = float2(0.00392156886,0.00392156886) * r2.xy;
      r4.zw = (int2)r8.xy * int2(3,3);
      r8.xyzw = mad(int4(3,3,3,3), (int4)r8.xxyy, int4(1,2,1,2));
      r9.x = cb1[r4.z+8].w * r2.x;
      r9.y = cb1[r8.x+8].w * r2.x;
      r9.z = cb1[r8.y+8].w * r2.x;
      r10.xyz = r2.xxx * cb1[r4.z+8].xyz + r6.xyz;
      r9.xyz = r9.xyz + r5.xyz;
      r11.xyz = r2.xxx * cb1[r8.x+8].xyz + r3.xyz;
      r12.xyz = r2.xxx * cb1[r8.y+8].xyz + r7.xyz;
      r13.x = cb1[r4.w+8].w * r2.y;
      r13.y = cb1[r8.z+8].w * r2.y;
      r13.z = cb1[r8.w+8].w * r2.y;
      r6.xyz = r2.yyy * cb1[r4.w+8].xyz + r10.xyz;
      r5.xyz = r13.xyz + r9.xyz;
      r3.xyz = r2.yyy * cb1[r8.z+8].xyz + r11.xyz;
      r7.xyz = r2.yyy * cb1[r8.w+8].xyz + r12.xyz;
    }
  } else {
    r6.xyz = cb1[r2.z+8].xyz;
    r5.x = cb1[r2.z+8].w;
    r5.y = cb1[r4.x+8].w;
    r5.z = cb1[r4.y+8].w;
    r3.xyz = cb1[r4.x+8].xyz;
    r7.xyz = cb1[r4.y+8].xyz;
  }
  r0.xzw = float3(0,0,1);
  r0.xyz = r1.yzw + r0.xyz;
  r1.xyz = cb12[15].xyz + r5.xyz;
  r6.w = r1.x;
  r1.x = dot(r6.xyzw, r0.xyzw);
  r3.w = r1.y;
  r1.y = dot(r3.xyzw, r0.xyzw);
  r7.w = r1.z;
  r0.x = dot(r7.xyzw, r0.xyzw);
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r1.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[14].xyzw + r0.xyzw;
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r0.x = r0.x * r1.z + r1.x;
  r2.x = -1 + r0.x;
  r0.x = -1 + r1.y;
  r2.y = r0.y * r1.w + -r0.x;
  o0.xy = r2.xy * r0.ww;
  o0.zw = r0.zw;
  return;
}