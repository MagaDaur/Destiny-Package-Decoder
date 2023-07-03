// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Buffer<uint4> t1 : register(t1);

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
  float4 cb0[5];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[4].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    o5.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r0.x = 32767.0996 * v0.w;
    r0.y = 32767.0996 * v1.w;
    r0.xy = (int2)r0.xy;
    r0.z = max((int)r0.x, (int)-r0.x);
    r0.w = cmp((int)r0.z >= 2048);
    r1.x = cmp((int)r0.x < 0);
    r1.y = (uint)v4.x << 1;
    r1.y = r1.x ? r1.y : v4.x;
    r0.z = (uint)r0.z << 3;
    r0.z = (int)r0.z + 0xffffc000;
    bitmask.z = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.z = (((uint)r1.y << 0) & bitmask.z) | ((uint)r0.z & ~bitmask.z);
    r2.xyzw = t1.Load(r0.z).xyzw;
    r0.y = max(0, (int)r0.y);
    r1.y = (uint)r0.y << 5;
    r1.y = (int)r1.y & 1792;
    r1.y = (int)r1.y | (int)r2.x;
    r0.x = r0.w ? r1.y : r0.x;
    r1.y = (int)r0.x * 3;
    r1.zw = mad(int2(3,3), (int2)r0.xx, int2(1,2));
    if (r0.w != 0) {
      r0.x = (uint)r0.y << 2;
      r0.x = (int)r0.x & 1792;
      r0.x = (int)r0.x | (int)r2.y;
      r2.xy = (uint2)r2.zw;
      r2.xy = float2(0.00392156886,0.00392156886) * r2.xy;
      r3.x = cb1[r1.y+8].w;
      r3.y = cb1[r1.z+8].w;
      r3.z = cb1[r1.w+8].w;
      r0.w = (int)r0.x * 3;
      r2.zw = mad(int2(3,3), (int2)r0.xx, int2(1,2));
      r4.xyz = cb1[r0.w+8].xyz * r2.yyy;
      r5.x = cb1[r0.w+8].w * r2.y;
      r5.y = cb1[r2.z+8].w * r2.y;
      r5.z = cb1[r2.w+8].w * r2.y;
      r6.xyz = cb1[r2.z+8].xyz * r2.yyy;
      r2.yzw = cb1[r2.w+8].xyz * r2.yyy;
      r4.xyz = cb1[r1.y+8].xyz * r2.xxx + r4.xyz;
      r3.xyz = r3.xyz * r2.xxx + r5.xyz;
      r5.xyz = cb1[r1.z+8].xyz * r2.xxx + r6.xyz;
      r2.xyz = cb1[r1.w+8].xyz * r2.xxx + r2.yzw;
      if (r1.x != 0) {
        r0.x = (int)r0.z + 1;
        r6.xyzw = t1.Load(r0.x).xyzw;
        r0.xyzw = (uint4)r0.yyyy >> int4(1,1,4,4);
        r0.xyzw = (int4)r0.xyzw & int4(1792,1792,1792,1792);
        r0.xyzw = (int4)r0.xyzw | (int4)r6.xxyy;
        r6.xy = (uint2)r6.zw;
        r6.xy = float2(0.00392156886,0.00392156886) * r6.xy;
        r6.zw = (int2)r0.yw * int2(3,3);
        r0.xyzw = mad(int4(3,3,3,3), (int4)r0.xyzw, int4(1,2,1,2));
        r7.x = cb1[r6.z+8].w * r6.x;
        r7.y = cb1[r0.x+8].w * r6.x;
        r7.z = cb1[r0.y+8].w * r6.x;
        r8.xyz = r6.xxx * cb1[r6.z+8].xyz + r4.xyz;
        r7.xyz = r7.xyz + r3.xyz;
        r9.xyz = r6.xxx * cb1[r0.x+8].xyz + r5.xyz;
        r10.xyz = r6.xxx * cb1[r0.y+8].xyz + r2.xyz;
        r11.x = cb1[r6.w+8].w * r6.y;
        r11.y = cb1[r0.z+8].w * r6.y;
        r11.z = cb1[r0.w+8].w * r6.y;
        r4.xyz = r6.yyy * cb1[r6.w+8].xyz + r8.xyz;
        r3.xyz = r11.xyz + r7.xyz;
        r5.xyz = r6.yyy * cb1[r0.z+8].xyz + r9.xyz;
        r2.xyz = r6.yyy * cb1[r0.w+8].xyz + r10.xyz;
      }
    } else {
      r4.xyz = cb1[r1.y+8].xyz;
      r3.x = cb1[r1.y+8].w;
      r3.y = cb1[r1.z+8].w;
      r3.z = cb1[r1.w+8].w;
      r5.xyz = cb1[r1.z+8].xyz;
      r2.xyz = cb1[r1.w+8].xyz;
    }
    r0.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
    r1.xyz = cb12[15].xyz + r3.xyz;
    r4.w = r1.x;
    r0.w = 1;
    r3.x = dot(r4.xyzw, r0.xyzw);
    r5.w = r1.y;
    r3.y = dot(r5.xyzw, r0.xyzw);
    r2.w = r1.z;
    r3.z = dot(r2.xyzw, r0.xyzw);
    r0.xyzw = cb12[1].xyzw * r3.yyyy;
    r0.xyzw = cb12[0].xyzw * r3.xxxx + r0.xyzw;
    r0.xyzw = cb12[2].xyzw * r3.zzzz + r0.xyzw;
    r0.xyzw = cb12[14].xyzw + r0.xyzw;
    r1.x = dot(v1.xyz, v1.xyz);
    r1.x = rsqrt(r1.x);
    r1.xyz = v1.xyz * r1.xxx;
    r6.x = dot(r4.xyz, r1.xyz);
    r6.y = dot(r5.xyz, r1.xyz);
    r6.z = dot(r2.xyz, r1.xyz);
    r1.x = dot(v2.xyz, v2.xyz);
    r1.x = rsqrt(r1.x);
    r1.xyz = v2.xyz * r1.xxx;
    r4.x = dot(r4.xyz, r1.xyz);
    r4.y = dot(r5.xyz, r1.xyz);
    r4.z = dot(r2.xyz, r1.xyz);
    r1.xyz = r6.zxy * r4.yzx;
    r1.xyz = r6.yzx * r4.zxy + -r1.xyz;
    o2.xyz = v2.www * r1.xyz;
    o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    r1.xyz = cb12[7].xyz + r3.xyz;
    r1.w = dot(r6.xyz, r6.xyz);
    r1.w = rsqrt(r1.w);
    r2.xyz = r6.xyz * r1.www;
    r3.xyz = cb0[2].xxx * r2.xyz;
    o4.xyz = r2.xyz * cb0[2].xxx + r1.xyz;
    r1.xyzw = cb12[1].xyzw * r3.yyyy;
    r1.xyzw = cb12[0].xyzw * r3.xxxx + r1.xyzw;
    r1.xyzw = cb12[2].xyzw * r3.zzzz + r1.xyzw;
    o5.xyzw = r1.xyzw + r0.xyzw;
    o0.xyz = r6.xyz;
    o0.w = 1;
    o1.w = v0.z;
    o1.xyz = r4.xyz;
  }
  return;
}