// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[122];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  uint v8 : SV_VERTEXID0,
  uint v9 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float2 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v8.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.zw = (uint2)r0.yy << int2(1,3);
  r0.z = (int)-r0.z + (int)v8.x;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(4,1,2,5) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r1.x = t2.Load(r1.y).w;
  r3.xyzw = t2.Load(r1.z).xyzw;
  r4.xyz = t2.Load(r1.w).yzw;
  r1.z = (uint)r0.w;
  o3.xyzw = t2.Load(r1.z).xyzw;
  r1.zw = float2(6,7) + r0.ww;
  r1.zw = (uint2)r1.zw;
  r5.xyzw = t2.Load(r1.z).xyzw;
  r0.w = t2.Load(r1.w).x;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r6.xyz = cb1[1].xyz * r3.yyy;
  r6.xyz = cb1[0].xyz * r3.xxx + r6.xyz;
  r6.xyz = cb1[2].xyz * r3.zzz + r6.xyz;
  r6.xyz = cb1[3].xyz + r6.xyz;
  r1.z = cmp(1 < cb0[109].x);
  if (r1.z != 0) {
    r1.z = cmp((int)r0.y < 0);
    if (r1.z != 0) {
      r1.z = cb0[36].x + 2;
      r1.z = (uint)r1.z;
      r7.xyz = t2.Load(r1.z).xyz;
    } else {
      r1.z = cb0[109].x + -1;
      r0.x = -r1.z + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
        r7.xyz = r3.xyz * float3(2,2,2) + -r8.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r7.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].xyz * r7.yyy;
  r3.xyz = cb1[0].xyz * r7.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * r7.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r3.xyz = r3.xyz + -r6.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(1,0,0);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r7.xyz = cb12[7].xyz + -r6.xyz;
  r0.xy = cos(r2.xy);
  r8.x = r0.x * r0.y;
  r0.x = sin(r2.x);
  r8.y = r0.x * r0.y;
  r8.z = sin(-r2.y);
  r8.xyz = r8.xyz * r5.yyy;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r8.xyz = r0.xxx ? -r8.xyz : r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r0.x = dot(r3.xyz, r7.xyz);
  r3.xyz = -r0.xxx * r3.xyz + r7.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  o1.xyz = r3.xyz * r0.xxx;
  r1.y = x0[r0.z+0].y;
  o0.xy = float2(0.5,1) * r1.xy;
  r8.xyzw = cb12[1].xyzw * r6.yyyy;
  r8.xyzw = cb12[0].xyzw * r6.xxxx + r8.xyzw;
  r8.xyzw = cb12[2].xyzw * r6.zzzz + r8.xyzw;
  r8.xyzw = cb12[3].xyzw + r8.xyzw;
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = sqrt(r0.x);
  r0.y = -1 + r0.x;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[8].y * r0.x;
  r0.x = cb0[121].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r6.xyz;
  o0.w = r8.w;
  o4.xy = r2.zw;
  o4.zw = float2(0,0);
  o5.x = r1.x;
  o5.yzw = r4.xyz;
  o6.x = 0;
  o6.yzw = r5.xyz;
  o8.xyzw = r8.xyzw;
  o7.x = r5.w;
  o7.y = r0.w;
  return;
}